---
title: "Develop your custom Microsoft Graph connector in C# using a template"
ms.author: rchanda
author: rchanda1392
manager: harshkum
ms.audience: Admin
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.prod: search
ms.date: 07/01/2022
description: "Microsoft Graph connectors SDK sample create connector"
---

# Develop your custom Microsoft Graph connector in C# using a template

## Prerequisites

1. Install [Visual Studio](https://visualstudio.microsoft.com/) 2019 or higher with [.NET Core 3.1 SDK](https://dotnet.microsoft.com/en-us/download)
2. Download the ApplianceParts.csv file from the [custom connector sample repo](https://github.com/microsoftgraph/msgraph-connectors-sdk/blob/main/C%23%20sample/ApplianceParts.csv).

## Install the extension

1. Open visual studio and go to **Extensions** > **Manage extensions**
2. Search for "**GraphConnectorsTemplate**" extension and download it
3. Close and relaunch Visual Studio to install the template
4. Go to **File** > **New** > **Project** and search for "GraphConnectorsTemplate". Select the template and select Next.
    ![Create project from template](images/connectors-sdk/create.png)
5. Give a name to the project and select Next.
6. Choose .NET Core 3.1, give a name to the connector as "CustomConnector" and select Create.
7. The custom connector template project is created with skeleton code
    ![Project structure from template](images/connectors-sdk/templateproject.png)

## Create the custom connector

Before beginning to build the connector, follow the steps given below to install NuGet packages and create the data models that will be used in this connector.

### Install NuGet packages

1. Use the right mouse button on the project and select "Open in Terminal"

    ![Open in Terminal](images/connectors-sdk/terminal.png)

2. Run the below command

    ```dotnetcli
    dotnet add package CsvHelper --version 27.2.1
    ```

### Create Data models

1. Create a folder called "**Models**" under "CustomConnector" and create a file AppliancePart.cs under the folder.
2. Paste the following code in AppliancePart.cs

    ```csharp
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.Text;
    
    namespace CustomConnector.Models
    {
        public class AppliancePart
        {
            [Key]
            public int PartNumber { get; set; }
            public string Name { get; set; }
            public string Description { get; set; }
            public double Price { get; set; }
            public int Inventory { get; set; }
            public List<string> Appliances { get; set; }
        }
    }
    
    ```

### Update ConnectionManagementServiceImpl.cs

ConnectionManagementServiceImpl.cs has three methods to be implemented:

**ValidateAuthentication**: This method is used to validate the credentials and the datasource URL provided. We need to connect to the datasource URL using the credentials provided and return success if the connection succeeds or auth failure status if the connection fails.

1. Create a folder called "**Data**" under "CustomConnector" and create a file CsvDataLoader.cs in the folder.

2. Copy the following code to CsvDataLoader.cs:

    ```csharp
    using CsvHelper;
    using CsvHelper.Configuration;
    using CsvHelper.TypeConversion;
    
    using CustomConnector.Models;
    
    using System.Collections.Generic;
    using System.Globalization;
    using System.IO;
    
    namespace CustomConnector.Data
    {
        public static class CsvDataLoader
        {
            public static void ReadRecordFromCsv(string filePath)
            {
                using (var reader = new StreamReader(filePath))
                using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
                {
                    csv.Context.RegisterClassMap<AppliancePartMap>();
                    csv.Read();
                }
            }
        }
    
        public class ApplianceListConverter : DefaultTypeConverter
        {
            public override object ConvertFromString(string text, IReaderRow row, MemberMapData memberMapData)
            {
                var appliances = text.Split(';');
                return new List<string>(appliances);
            }
        }
    
        public class AppliancePartMap : ClassMap<AppliancePart>
        {
            public AppliancePartMap()
            {
                Map(m => m.PartNumber);
                Map(m => m.Name);
                Map(m => m.Description);
                Map(m => m.Price);
                Map(m => m.Inventory);
                Map(m => m.Appliances).TypeConverter<ApplianceListConverter>();
            }
        }
    }
    
    ```

    The ReadRecordFromCsv method will just open the CSV file and read the first record from the file. We can use this method to validate if the provided data source URL (path of the CSV file) is valid. This connector is using anonymous auth, hence there's no validation of credentials here. If it's using any other auth type, the connection to data source must be made using the provided credentials to validate the authentication.

3. Add the following using directive in ConnectionManagementServiceImpl.cs

    ```csharp
    using CustomConnector.Data;
    ```

4. Update the ValidateAuthentication method in ConnectionManagementServiceImpl.cs with the following code to call the ReadRecordFromCsv method of CsvDataLoader class

    ```csharp
    public override Task<ValidateAuthenticationResponse> ValidateAuthentication(ValidateAuthenticationRequest request, ServerCallContext context)
            {
                try
                {
                    Log.Information("Validating authentication");
                    CsvDataLoader.ReadRecordFromCsv(request.AuthenticationData.DatasourceUrl);
                    return this.BuildAuthValidationResponse(true);
                }
                catch (Exception ex)
                {
                    Log.Error(ex.ToString());
                    return this.BuildAuthValidationResponse(false, "Could not read the provided CSV file with the provided credentials");
                }
            }
    
    ```

**ValidateCustomConfiguration**: This method is used to validate any other parameters required for the connection. This connector we're writing doesn't require any extra parameters, hence the validation is that the extra parameters should be empty.

1. Update ValidateCustomConfiguration method in ConnectionManagementServiceImpl.cs with the following code

    ```csharp
    public override Task<ValidateCustomConfigurationResponse> ValidateCustomConfiguration(ValidateCustomConfigurationRequest request, ServerCallContext context)
        {
            Log.Information("Validating custom configuration");
            ValidateCustomConfigurationResponse response;

            if (!string.IsNullOrWhiteSpace(request.CustomConfiguration.Configuration))
            {
                response = new ValidateCustomConfigurationResponse()
                {
                    Status = new OperationStatus()
                    {
                        Result = OperationResult.ValidationFailure,
                        StatusMessage = "No additional parameters are required for this connector"
                    },
                };
            }
            else
            {
                response = new ValidateCustomConfigurationResponse()
                {
                    Status = new OperationStatus()
                    {
                        Result = OperationResult.Success,
                    },
                };
            }

            return Task.FromResult(response);
        }

    ```

**GetDataSourceSchema**: This method is used to fetch the schema for the connector:

1. Add the following using directives in AppliancePart.cs

    ```csharp
    using Microsoft.Graph.Connectors.Contracts.Grpc;
    using static Microsoft.Graph.Connectors.Contracts.Grpc.SourcePropertyDefinition.Types;

    ```

2. Add the following method GetSchema in AppliancePart.cs class

     ```csharp
      public static DataSourceSchema GetSchema()
        {
            DataSourceSchema schema = new DataSourceSchema();

            schema.PropertyList.Add(
                new SourcePropertyDefinition
                {
                    Name = nameof(PartNumber),
                    Type = SourcePropertyType.Int64,
                    DefaultSearchAnnotations = (uint)(SearchAnnotations.IsQueryable | SearchAnnotations.IsRetrievable),
                    RequiredSearchAnnotations = (uint)(SearchAnnotations.IsQueryable | SearchAnnotations.IsRetrievable),
                });

            schema.PropertyList.Add(
                new SourcePropertyDefinition
                {
                    Name = nameof(Name),
                    Type = SourcePropertyType.String,
                    DefaultSearchAnnotations = (uint)(SearchAnnotations.IsSearchable | SearchAnnotations.IsRetrievable),
                    RequiredSearchAnnotations = (uint)(SearchAnnotations.IsSearchable | SearchAnnotations.IsRetrievable),
                });

            schema.PropertyList.Add(
                new SourcePropertyDefinition
                {
                    Name = nameof(Price),
                    Type = SourcePropertyType.Double,
                    DefaultSearchAnnotations = (uint)(SearchAnnotations.IsRetrievable),
                    RequiredSearchAnnotations = (uint)(SearchAnnotations.IsRetrievable),
                });

            schema.PropertyList.Add(
                new SourcePropertyDefinition
                {
                    Name = nameof(Inventory),
                    Type = SourcePropertyType.Int64,
                    DefaultSearchAnnotations = (uint)(SearchAnnotations.IsQueryable | SearchAnnotations.IsRetrievable),
                    RequiredSearchAnnotations = (uint)(SearchAnnotations.IsQueryable | SearchAnnotations.IsRetrievable),
                });

            schema.PropertyList.Add(
                new SourcePropertyDefinition
                {
                    Name = nameof(Appliances),
                    Type = SourcePropertyType.StringCollection,
                    DefaultSearchAnnotations = (uint)(SearchAnnotations.IsSearchable | SearchAnnotations.IsRetrievable),
                    RequiredSearchAnnotations = (uint)(SearchAnnotations.IsSearchable | SearchAnnotations.IsRetrievable),
                });

            schema.PropertyList.Add(
                new SourcePropertyDefinition
                {
                    Name = nameof(Description),
                    Type = SourcePropertyType.String,
                    DefaultSearchAnnotations = (uint)(SearchAnnotations.IsSearchable | SearchAnnotations.IsRetrievable),
                    RequiredSearchAnnotations = (uint)(SearchAnnotations.IsSearchable | SearchAnnotations.IsRetrievable),
                });

            return schema;
        }
  
     ```

3. Add the following using directive in ConnectionManagementServiceImpl.cs

    ```csharp
    using CustomConnector.Models;
    ```

4. Update the GetDataSourceSchema method in ConnectionManagementServiceImpl.cs with the following code

    ```csharp
    public override Task<GetDataSourceSchemaResponse> GetDataSourceSchema(GetDataSourceSchemaRequest request, ServerCallContext context)
        {
            Log.Information("Trying to fetch datasource schema");

            var opStatus = new OperationStatus()
            {
                Result = OperationResult.Success,
            };

            GetDataSourceSchemaResponse response = new GetDataSourceSchemaResponse()
            {
                DataSourceSchema = AppliancePart.GetSchema(),
                Status = opStatus,
            };

            return Task.FromResult(response);
        }

    ```

### Update ConnectorCrawlerServiceImpl.cs

This class has the methods that will be called by the platform during the crawls.

**GetCrawlStream**: This method will be called during the full or periodic full crawls.

1. Add the following using directive in AppliancePart.cs

    ```csharp
    using System.Globalization;
    ```

2. Add the following methods in AppliancePart.cs for converting the AppliancePart record to CrawlItem

    ```csharp
    public CrawlItem ToCrawlItem()
        {
            return new CrawlItem
            {
                ItemType = CrawlItem.Types.ItemType.ContentItem,
                ItemId = this.PartNumber.ToString(CultureInfo.InvariantCulture),
                ContentItem = this.GetContentItem(),
            };
        }

        private ContentItem GetContentItem()
        {
            return new ContentItem
            {
                AccessList = this.GetAccessControlList(),
                PropertyValues = this.GetSourcePropertyValueMap()
            };
        }

        private AccessControlList GetAccessControlList()
        {
            AccessControlList accessControlList = new AccessControlList();
            accessControlList.Entries.Add(this.GetAllowEveryoneAccessControlEntry());
            return accessControlList;
        }

        private AccessControlEntry GetAllowEveryoneAccessControlEntry()
        {
            return new AccessControlEntry
            {
                AccessType = AccessControlEntry.Types.AclAccessType.Grant,
                Principal = new Principal
                {
                    Type = Principal.Types.PrincipalType.Everyone,
                    IdentitySource = Principal.Types.IdentitySource.AzureActiveDirectory,
                    IdentityType = Principal.Types.IdentityType.AadId,
                    Value = "EVERYONE",
                }
            };
        }

        private SourcePropertyValueMap GetSourcePropertyValueMap()
        {
            SourcePropertyValueMap sourcePropertyValueMap = new SourcePropertyValueMap();

            sourcePropertyValueMap.Values.Add(
                nameof(this.PartNumber),
                new GenericType
                {
                    IntValue = this.PartNumber,
                });
            
            sourcePropertyValueMap.Values.Add(
                nameof(this.Name),
                new GenericType
                {
                    StringValue = this.Name,
                });
            
            sourcePropertyValueMap.Values.Add(
                nameof(this.Price),
                new GenericType
                {
                    DoubleValue = this.Price,
                });
            
            sourcePropertyValueMap.Values.Add(
                nameof(this.Inventory),
                new GenericType
                {
                    IntValue = this.Inventory,
                });
            
            var appliancesPropertyValue = new StringCollectionType();
            foreach(var property in this.Appliances)
            {
                appliancesPropertyValue.Values.Add(property);
            }
            sourcePropertyValueMap.Values.Add(
                nameof(this.Appliances),
                new GenericType
                {
                    StringCollectionValue = appliancesPropertyValue,
                });
            
            sourcePropertyValueMap.Values.Add(
                nameof(this.Description),
                new GenericType
                {
                    StringValue = Description,
                });

            return sourcePropertyValueMap;
        }

    ```

3. Add the following using directive in CsvDataLoader.cs

    ```csharp
    using Microsoft.Graph.Connectors.Contracts.Grpc;
    ```

4. Add the following method in CsvDataLoader.cs

    ```csharp
    public static IEnumerable<CrawlItem> GetCrawlItemsFromCsv(string filePath)
        {
            using (var reader = new StreamReader(filePath))
            using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
            {
                csv.Context.RegisterClassMap<AppliancePartMap>();

                // The GetRecords<T> method will return an IEnumerable<T> that will yield records. What this means is that only a single record is returned at a time as you iterate the records.
                foreach (var record in csv.GetRecords<AppliancePart>())
                {
                    yield return record.ToCrawlItem();
                }
            }
        }

    ```

5. Add the following using directive in ConnectorCrawlerServiceImpl.cs

    ```csharp
    using CustomConnector.Data;
    ```

6. Add the following method in ConnectorCrawlerServiceImpl.cs

    ```csharp
    private CrawlStreamBit GetCrawlStreamBit(CrawlItem crawlItem)
        {
            return new CrawlStreamBit
            {
                Status = new OperationStatus
                {
                    Result = OperationResult.Success,
                },
                CrawlItem = crawlItem,
                CrawlProgressMarker = new CrawlCheckpoint
                {
                    CustomMarkerData = crawlItem.ItemId,
                },
            };
        }

    ```

7. Update the GetCrawlStream method to the following

    ```csharp
    public override async Task GetCrawlStream(GetCrawlStreamRequest request, IServerStreamWriter<CrawlStreamBit> responseStream, ServerCallContext context)
        {
            try
            {
                Log.Information("GetCrawlStream Entry");
                var crawlItems = CsvDataLoader.GetCrawlItemsFromCsv(request.AuthenticationData.DatasourceUrl);
                foreach (var crawlItem in crawlItems)
                {
                    CrawlStreamBit crawlStreamBit = this.GetCrawlStreamBit(crawlItem);
                    await responseStream.WriteAsync(crawlStreamBit).ConfigureAwait(false);
                }
            }
            catch (Exception ex)
            {
                Log.Error(ex.ToString());
                CrawlStreamBit crawlStreamBit = new CrawlStreamBit
                {
                    Status = new OperationStatus
                    {
                        Result = OperationResult.DatasourceError,
                        StatusMessage = "Fetching items from datasource failed",
                        RetryInfo = new RetryDetails
                        {
                            Type = RetryDetails.Types.RetryType.Standard,
                        },
                    },
                };
                await responseStream.WriteAsync(crawlStreamBit).ConfigureAwait(false);
            }

        }

    ```

Now the connector is created and you can build and run the project.
![Project run output](images/connectors-sdk/run.png)

## Next steps

* [Test your connector](/concepts/custom-connector-sdk-sample-test)
