---
title: Quickstart – Create your first custom Microsoft Graph Connector
description: Quickstart guide to create a custom connector 
author: mecampos
ms.author: mecampos
ms.topic: quickstart
ms.date: 04/26/2021
ms.custom: template-quickstart
---

#
# Quickstart – Create your first custom Microsoft Graph Connector

[1 Introduction](#_Toc66907338)

[2 How does the sample work?](#_Toc66907339)

[3 Prerequisites](#_Toc66907340)

[4 Register the app in the portal](#_Toc66907341)

[5 Build the app](#_Toc66907342)

[5.1 Create a .NET Core console app](#_Toc66907343)

[5.2 Add nuget packages](#_Toc66907344)

[5.3 Add azure AD authentication](#_Toc66907345)

[5.4 Add user experience](#_Toc66907346)

[5.5 Set up data model](#_Toc66907347)

[5.6 Write the graph helper service](#_Toc66907348)

[5.7 Initialize graph helper service](#_Toc66907349)

[5.8 Create the connection](#_Toc66907350)

[5.9 Register schema](#_Toc66907351)

[5.10 Sync items](#_Toc66907352)

[6 Configure the app](#_Toc66907353)

[7 Create the database from CSV](#_Toc66907354)

[8 Run the app](#_Toc66907355)

[9 Surface the data in search](#_Toc66907356)

[9.1 Create a vertical](#_Toc66907357)

[9.2 Create a result type](#_Toc66907358)

[10 Search for results](#_Toc66907359)

[11 Summary](#_Toc66907360)

1.
# Introduction

With Microsoft Graph Connectors, you can add your own data into Microsoft Graph and have it power various Microsoft 365 experiences.

This .NET Core application shows you how to use the Microsoft Graph Connector API to create a customer connector and use it to power Microsoft Search. The sample uses fictitious data - appliance parts inventory for the Contoso Appliance Repair.

1.
# How does the sample work?

![](RackMultipart20210428-4-jkha36_html_370455c4c42cf106.png)

1.
# Prerequisites

1. Visual studio 2019 with [.NET Core 3.1 SDK](https://www.microsoft.com/net/download/core) installed on your development computer.
2. Either a [personal Microsoft account](https://signup.live.com/) or a work or school account.
3. The application ID and key from the application that you register on the [App Registration Portal](#RegisterAnAppInAzurePortal).
4. [Entity Framework Core Tools](https://docs.microsoft.com/ef/core/miscellaneous/cli/dotnet) (dotnet tool install --global dotnet-ef)
5. Some way to update an SQLite database. For example, the [DB Browser for SQLite](https://sqlitebrowser.org/).
6. Download **ApplianceParts.csv** file from [https://github.com/microsoftgraph/msgraph-search-connector-sample/blob/master/PartsInventoryConnector/ApplianceParts.csv](https://github.com/microsoftgraph/msgraph-search-connector-sample/blob/master/PartsInventoryConnector/ApplianceParts.csv) and add it to the PartsInventoryConnector.csproj

1.
# Register the app in the portal

After the previous steps are completed, you will then be able to register an application in the Azure AD admin center. This is necessary in order to authenticate the application and use it to make calls to the Microsoft Graph indexing API.

1. Go to the [Azure Active Directory admin center](https://aad.portal.azure.com/) and sign in with an administrator account.
2. Select **Azure Active Directory** in the left-hand pane, then select **App registrations** under Manage.
3. Select **New registration**.

![](RackMultipart20210428-4-jkha36_html_d0e30b30c5ea9d41.png)

1. Complete the **Register an application** form with the following values, then select **Register**.
  1. **Name** : Parts Inventory Connector
  2. **Supported account types** : Accounts in this organizational directory only (Microsoft only - Single tenant)
  3. **Redirect URI** : Leave blank

![](RackMultipart20210428-4-jkha36_html_d60943e669e44e70.png)

1. On the Parts Inventory Connector overview page, copy the values of **Application (client) ID and Directory (tenant) ID**. You will require both in the following section.

![](RackMultipart20210428-4-jkha36_html_55d9faa0eb2ae363.png)

1. Select **API Permissions** under **Manage**.
2. Select **Add a permission** , then select **Microsoft Graph**.
3. Select **Application permissions** , then select the **ExternalItem.ReadWrite.All** permission. Select **Add permissions**.

![](RackMultipart20210428-4-jkha36_html_16f37a91ae983b0e.png)

1. Select **Grant admin consent for {TENANT},** then select **Yes** when prompted.

![](RackMultipart20210428-4-jkha36_html_86c59337caa11f32.png)

1. Select **Certificates &amp; secrets** under **Manage** , then select **New client secret**.
2. Enter a description and choose an expiration time for the secret, then select **Add**.

![](RackMultipart20210428-4-jkha36_html_b68ef285910e693c.png)

1. Copy the new secret, you will need it in the following section.

1.
# Build the app

  1.
## Create a .NET Core console app

1. Launch Visual Studio 2019 and navigate to File à New à Project.
2. Select Console App (.Net Core) template and Click Next.
3. Enter the Project name **PartsInventoryConnector** and select the checkbox for &quot; **Place solution and project in the same directory**&quot;.

![](RackMultipart20210428-4-jkha36_html_107327fa8352c231.png)

  1.
## Add nuget packages

![](RackMultipart20210428-4-jkha36_html_c91bc1e60e52d3a3.png)

Right click on Solution and Open in Terminal window (Right Click on Project solution à Open in Terminal) and run the below CLI commands in the developer command prompt.

1. dotnet add package CsvHelper --version 12.1.2
2. dotnet add package Microsoft.EntityFrameworkCore.Design --version 3.1.3
3. dotnet add package Microsoft.EntityFrameworkCore.Sqlite --version 3.1.3
4. dotnet add package Microsoft.Extensions.Configuration.UserSecrets --version 3.1.3
5. dotnet add package Microsoft.Graph.Beta --version 0.17.0-preview
6. dotnet add package Microsoft.Identity.Client --version 4.13.0

  1.
## Add azure AD authentication

This authentication is required to obtain the necessary OAuth access token to call the Microsoft Graph indexing API.

1. Create a new directory named **Authentication** in the **PartsInventoryConnector** directory **.**
2. Create a new file in the **Authentication** directory named ClientCredentialAuthProvider.cs and replace the entire following code in that file.

// Copyright (c) Microsoft Corporation. All rights reserved.

// Licensed under the MIT license.

using Microsoft.Graph;

using Microsoft.Identity.Client;

using System;

using System.Net.Http;

using System.Net.Http.Headers;

using System.Threading.Tasks;

namespace PartsInventoryConnector.Authentication

{

publicclassClientCredentialAuthProvider : IAuthenticationProvider

{

private IConfidentialClientApplication \_msalClient;

privateint \_maxRetries = 3;

publicClientCredentialAuthProvider(string appId, string tenantId, string secret)

{

\_msalClient = ConfidentialClientApplicationBuilder

.Create(appId)

.WithTenantId(tenantId)

.WithClientSecret(secret)

.Build();

}

publicasync Task AuthenticateRequestAsync(HttpRequestMessage request)

{

int retryCount = 0;

do

{

try

{

var result = await \_msalClient

.AcquireTokenForClient(new[] { &quot;https://graph.microsoft.com/.default&quot; })

.ExecuteAsync();

if (!string.IsNullOrEmpty(result.AccessToken))

{

request.Headers.Authorization =

new AuthenticationHeaderValue(&quot;bearer&quot;, result.AccessToken);

break;

}

}

catch (MsalServiceException serviceException)

{

if (serviceException.ErrorCode == &quot;temporarily\_unavailable&quot;)

{

await Task.Delay(10000);

}

else

{

throw serviceException;

}

}

catch (Exception exception)

{

throw exception;

}

retryCount++;

} while (retryCount \&lt; \_maxRetries);

}

}

}

  1.
## Add user experience

1. Create a new directory in the **PartsInventoryConnector** directory named **Console**.
2. Create a new file in the **Console** directory named MenuChoice.cs and replace the entire following code in that file.

// Copyright (c) Microsoft Corporation. All rights reserved.

// Licensed under the MIT license.

namespace PartsInventoryConnector.Console

{

publicenumMenuChoice

{

Invalid = 0,

CreateConnection,

RegisterSchema,

PushAllItems,

Exit

}

}

  1.
## Set up data model

1. Create a new directory in the **PartsInventoryConnector** directory named **Models**.
2. Create a new file in the **Models** directory named AppliancePart.cs and replace the entire following code to that file.

// Copyright (c) Microsoft Corporation. All rights reserved.

// Licensed under the MIT license.

using Microsoft.Graph;

using Newtonsoft.Json;

using System.Collections.Generic;

using System.ComponentModel.DataAnnotations;

namespace PartsInventoryConnector.Models

{

publicclassAppliancePart

{

[Key]

publicint PartNumber { get; set; }

publicstring Name { get; set; }

publicstring Description { get; set; }

publicdouble Price { get; set; }

publicint Inventory { get; set; }

[JsonProperty(&quot;appliances@odata.type&quot;)]

privateconststring AppliancesODataType = &quot;Collection(String)&quot;;

public List\&lt;string\&gt; Appliances { get; set; }

public Properties AsExternalItemProperties()

{

var properties = new Properties

{

AdditionalData = new Dictionary\&lt;string, object\&gt;

{

{ &quot;partNumber&quot;, PartNumber },

{ &quot;name&quot;, Name },

{ &quot;description&quot;, Description },

{ &quot;price&quot;, Price },

{ &quot;inventory&quot;, Inventory },

{ &quot;appliances@odata.type&quot;, &quot;Collection(String)&quot; },

{ &quot;appliances&quot;, Appliances }

}

};

return properties;

}

}

}

1. Create a new file in the **Models** directory named ApplianceDbContext.cs and replace the entire following code in that file.

using Microsoft.Data.Sqlite;

using Microsoft.EntityFrameworkCore;

using Microsoft.EntityFrameworkCore.ChangeTracking;

using Newtonsoft.Json;

using System;

using System.Collections.Generic;

using System.Linq;

namespace PartsInventoryConnector.Models

{

publicclassApplianceDbContext : DbContext

{

public DbSet\&lt;AppliancePart\&gt; Parts { get; set; }

protectedoverridevoid OnConfiguring(DbContextOptionsBuilder options)

{

options.UseSqlite(&quot;Data Source=parts.db&quot;);

}

protectedoverridevoid OnModelCreating(ModelBuilder modelBuilder)

{

// EF Core can&#39;t store lists, so add a converter for the Appliances

// property to serialize as a JSON string on save to DB

modelBuilder.Entity\&lt;AppliancePart\&gt;()

.Property(ap =\&gt; ap.Appliances)

.HasConversion(

v =\&gt; JsonConvert.SerializeObject(v),

v =\&gt; JsonConvert.DeserializeObject\&lt;List\&lt;string\&gt;\&gt;(v)

);

// Add LastUpdated and IsDeleted shadow properties

modelBuilder.Entity\&lt;AppliancePart\&gt;()

.Property\&lt;DateTime\&gt;(&quot;LastUpdated&quot;)

.HasDefaultValueSql(&quot;datetime()&quot;)

.ValueGeneratedOnAddOrUpdate();

modelBuilder.Entity\&lt;AppliancePart\&gt;()

.Property\&lt;bool\&gt;(&quot;IsDeleted&quot;)

.IsRequired()

.HasDefaultValue(false);

// Exclude any soft-deleted items (IsDeleted = 1) from

// the default query sets

modelBuilder.Entity\&lt;AppliancePart\&gt;()

.HasQueryFilter(a =\&gt; !EF.Property\&lt;bool\&gt;(a, &quot;IsDeleted&quot;));

}

publicoverrideint SaveChanges()

{

// Prevent deletes of data, instead mark the item as deleted

// by setting IsDeleted = true.

foreach(var entry in ChangeTracker.Entries()

.Where(e =\&gt; e.State == EntityState.Deleted))

{

if (entry.Entity.GetType() == typeof(AppliancePart))

{

SoftDelete(entry);

}

}

returnbase.SaveChanges();

}

privatevoid SoftDelete(EntityEntry entry)

{

var partNumber = new SqliteParameter(&quot;@partNumber&quot;,

entry.OriginalValues[&quot;PartNumber&quot;]);

Database.ExecuteSqlRaw(

&quot;UPDATE Parts SET IsDeleted = 1 WHERE PartNumber = @partNumber&quot;,

partNumber);

entry.State = EntityState.Detached;

}

}

}

1. Create a new directory named **Data** in the **PartsInventoryConnector** directory.
2. Create a new file in the **Data** directory named CsvDataLoader.cs and replace the entire following code in that file.

using CsvHelper;

using CsvHelper.Configuration;

using CsvHelper.TypeConversion;

using PartsInventoryConnector.Models;

using System.Collections.Generic;

using System.IO;

using System.Linq;

namespace PartsInventoryConnector.Data

{

publicstaticclassCsvDataLoader

{

publicstatic List\&lt;AppliancePart\&gt; LoadPartsFromCsv(string filePath)

{

using (var reader = new StreamReader(filePath))

using (var csv = new CsvReader(reader))

{

csv.Configuration.RegisterClassMap\&lt;AppliancePartMap\&gt;();

returnnew List\&lt;AppliancePart\&gt;(csv.GetRecords\&lt;AppliancePart\&gt;());

}

}

}

publicclassApplianceListConverter : DefaultTypeConverter

{

publicoverrideobject ConvertFromString(string text, IReaderRow row, MemberMapData memberMapData)

{

var appliances = text.Split(&#39;;&#39;);

returnnew List\&lt;string\&gt;(appliances);

}

}

publicclassAppliancePartMap : ClassMap\&lt;AppliancePart\&gt;

{

publicAppliancePartMap()

{

Map(m =\&gt; m.PartNumber);

Map(m =\&gt; m.Name);

Map(m =\&gt; m.Description);

Map(m =\&gt; m.Price);

Map(m =\&gt; m.Inventory);

Map(m =\&gt; m.Appliances).TypeConverter\&lt;ApplianceListConverter\&gt;();

}

}

}

  1.
## Write the graph helper service

1. Create a new directory named **Graph** in the **PartsInventoryConnector** directory.
2. Create a new file in the **Graph** directory named CustomSerializer.cs and replace the entire following code in that file.

using Microsoft.Graph;

using Newtonsoft.Json;

using Newtonsoft.Json.Converters;

using Newtonsoft.Json.Serialization;

using System;

using System.IO;

namespace PartsInventoryConnector.Graph

{

// The Graph SDK serializes enumerations in camelCase.

// The Graph service currently requires the PropertyType enum

// to be PascalCase. This will override the Graph serialization

// If the Graphs service changes to accept camelCase this will no

// longer be necessary

classCustomContractResolver : DefaultContractResolver

{

protectedoverride JsonConverter ResolveContractConverter(Type objectType)

{

if (typeof(PropertyType).IsAssignableFrom(objectType))

{

// This default converter uses PascalCase

returnnew StringEnumConverter();

}

returnbase.ResolveContractConverter(objectType);

}

}

// In order to hook up the custom contract resolver for

// PropertyType, we need to implement a custom serializer to

// pass to the GraphServiceClient.

publicclassCustomSerializer : ISerializer

{

private Serializer \_graphSerializer;

private JsonSerializerSettings \_jsonSerializerSettings;

publicCustomSerializer()

{

\_graphSerializer = new Serializer();

\_jsonSerializerSettings = new JsonSerializerSettings

{

ContractResolver = new CustomContractResolver()

};

}

// For deserialize, just pass through to the default

// Graph SDK serializer

public T DeserializeObject\&lt;T\&gt;(Stream stream)

{

return \_graphSerializer.DeserializeObject\&lt;T\&gt;(stream);

}

// For deserialize, just pass through to the default

// Graph SDK serializer

public T DeserializeObject\&lt;T\&gt;(string inputString)

{

return \_graphSerializer.DeserializeObject\&lt;T\&gt;(inputString);

}

publicstring SerializeObject(object serializeableObject)

{

// If a Schema object is being serialized, do the conversion

// ourselves

if (serializeableObject is Schema)

{

var foo = JsonConvert.SerializeObject(serializeableObject, \_jsonSerializerSettings);

return foo;

}

// Otherwise, just pass through to the default Graph SDK serializer

return \_graphSerializer.SerializeObject(serializeableObject);

}

}

}

1. Create a new file in the **Graph** directory named GraphHelper.cs and replace the entire following code in that file.

The following code contains methods that use the **GraphServiceClient** to build and send calls to the Microsoft Graph service and process the response.

// Copyright (c) Microsoft Corporation. All rights reserved.

// Licensed under the MIT license.

using Microsoft.Graph;

using Newtonsoft.Json;

using System.Net.Http;

using System.Threading.Tasks;

namespace PartsInventoryConnector.Graph

{

publicclassGraphHelper

{

private GraphServiceClient \_graphClient;

publicGraphHelper(IAuthenticationProvider authProvider)

{

// Configure a default HttpProvider with our

// custom serializer to handle the PropertyType serialization

var serializer = new CustomSerializer();

var httpProvider = new HttpProvider(serializer);

// Initialize the Graph client

\_graphClient = new GraphServiceClient(authProvider, httpProvider);

}

}

}

  1.
## Initialize graph helper service

1. Open Program.cs and replace the entire content with the following code:

using Microsoft.EntityFrameworkCore;

using Microsoft.Extensions.Configuration;

using Microsoft.Graph;

using PartsInventoryConnector.Authentication;

using PartsInventoryConnector.Console;

using PartsInventoryConnector.Data;

using PartsInventoryConnector.Graph;

using PartsInventoryConnector.Models;

using System;

using System.Collections.Generic;

using System.Linq;

using System.Threading.Tasks;

namespace PartsInventoryConnector

{

classProgram

{

privatestatic GraphHelper \_graphHelper;

privatestatic ExternalConnection \_currentConnection;

privatestaticstring \_tenantId;

staticasync Task Main(string[] args)

{

try

{

// Load configuration from appsettings.json

var appConfig = LoadAppSettings();

if (appConfig == null)

{

return;

}

// Save tenant ID for setting ACL on items

\_tenantId = appConfig[&quot;tenantId&quot;];

// Initialize the auth provider

var authProvider = new ClientCredentialAuthProvider(

appConfig[&quot;appId&quot;],

appConfig[&quot;tenantId&quot;],

appConfig[&quot;appSecret&quot;]

);

// Check if the database is empty

using (var db = new ApplianceDbContext())

{

if (db.Parts.IgnoreQueryFilters().Count() \&lt;= 0)

{

ImportCsvToDatabase(db, &quot;ApplianceParts.csv&quot;);

}

}

\_graphHelper = new GraphHelper(authProvider);

do

{

var userChoice = DoMenuPrompt();

switch (userChoice)

{

case MenuChoice.CreateConnection:

await CreateConnectionAsync();

break;

case MenuChoice.RegisterSchema:

await RegisterSchemaAsync();

break;

case MenuChoice.PushAllItems:

await UpdateItemsFromDatabase();

break;

case MenuChoice.Exit:

// Exit the program

return;

case MenuChoice.Invalid:

default:

break;

}

} while (true);

}

catch (Exception ex)

{

System.Console.WriteLine(ex.Message);

}

}

privatestaticvoid ImportCsvToDatabase(ApplianceDbContext db, string partsFilePath)

{

var parts = CsvDataLoader.LoadPartsFromCsv(partsFilePath);

db.AddRange(parts);

db.SaveChanges();

}

privatestatic MenuChoice DoMenuPrompt()

{

System.Console.WriteLine($&quot;Current connection: {(\_currentConnection == null ? &quot;NONE&quot; : \_currentConnection.Name)}&quot;);

System.Console.WriteLine(&quot;Please choose one of the following options:&quot;);

System.Console.WriteLine($&quot;{Convert.ToInt32(MenuChoice.CreateConnection)}. Create a connection&quot;);

System.Console.WriteLine($&quot;{Convert.ToInt32(MenuChoice.RegisterSchema)}. Register schema for current connection&quot;);

System.Console.WriteLine($&quot;{Convert.ToInt32(MenuChoice.PushAllItems)}. Push ALL items to current connection&quot;);

System.Console.WriteLine($&quot;{Convert.ToInt32(MenuChoice.Exit)}. Exit&quot;);

try

{

var choice = int.Parse(System.Console.ReadLine());

return (MenuChoice)choice;

}

catch (FormatException)

{

return MenuChoice.Invalid;

}

}

privatestaticstring PromptForInput(string prompt, bool valueRequired)

{

string response = null;

do

{

System.Console.WriteLine($&quot;{prompt}:&quot;);

response = System.Console.ReadLine();

if (valueRequired &amp;&amp; string.IsNullOrEmpty(response))

{

System.Console.WriteLine(&quot;You must provide a value&quot;);

}

} while (valueRequired &amp;&amp; string.IsNullOrEmpty(response));

return response;

}

privatestatic IConfigurationRoot LoadAppSettings()

{

var appConfig = new ConfigurationBuilder()

.AddUserSecrets\&lt;Program\&gt;()

.Build();

// Check for required settings

if (string.IsNullOrEmpty(appConfig[&quot;appId&quot;]) ||

string.IsNullOrEmpty(appConfig[&quot;appSecret&quot;]) ||

string.IsNullOrEmpty(appConfig[&quot;tenantId&quot;]))

{

returnnull;

}

return appConfig;

}

}

}

  1.
## Create the connection

1. Under **Graph** , Open GraphHelper.cs file and add the following code after the **constructor** method.

#region Connections

publicasync Task\&lt;ExternalConnection\&gt; CreateConnectionAsync(string id, string name, string description)

{

var newConnection = new ExternalConnection

{

// Need to set to null, service returns 400

// if @odata.type property is sent

ODataType = null,

Id = id,

Name = name,

Description = description

};

returnawait \_graphClient.External.Connections.Request().AddAsync(newConnection);

}

#endregion

1. Open the Program.cs file and add the below code after the **Main** method.

privatestaticasync Task CreateConnectionAsync()

{

var connectionId = PromptForInput(&quot;Enter a unique ID for the new connection&quot;, true);

var connectionName = PromptForInput(&quot;Enter a name for the new connection&quot;, true);

var connectionDescription = PromptForInput(&quot;Enter a description for the new connection&quot;, false);

try

{

// Create the connection

\_currentConnection = await \_graphHelper.CreateConnectionAsync(connectionId, connectionName, connectionDescription);

System.Console.WriteLine(&quot;New connection created&quot;);

System.Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(\_currentConnection, Newtonsoft.Json.Formatting.Indented));

}

catch (ServiceException serviceException)

{

System.Console.WriteLine(serviceException.Message);

return;

}

}

  1.
## Register schema

1. Under **Graph** , Open the GraphHelper.cs file and add the following code after the **constructor** method.

#region Schema

publicasync Task RegisterSchemaAsync(string connectionId, Schema schema)

{

// Need access to the HTTP response here since we are doing an

// async request. The new schema object isn&#39;t returned, we need

// the Location header from the response

var asyncNewSchemaRequest = \_graphClient.External.Connections[connectionId].Schema

.Request()

.Header(&quot;Prefer&quot;, &quot;respond-async&quot;)

.GetHttpRequestMessage();

asyncNewSchemaRequest.Method = HttpMethod.Post;

asyncNewSchemaRequest.Content = \_graphClient.HttpProvider.Serializer.SerializeAsJsonContent(schema);

var response = await \_graphClient.HttpProvider.SendAsync(asyncNewSchemaRequest);

if (response.IsSuccessStatusCode)

{

// Get the operation ID from the Location header

var operationId = ExtractOperationId(response.Headers.Location);

await CheckSchemaStatusAsync(connectionId, operationId);

}

else

{

thrownew ServiceException(

new Error

{

Code = response.StatusCode.ToString(),

Message = &quot;Registering schema failed&quot;

}

);

}

}

privatestring ExtractOperationId(System.Uri uri)

{

int numSegments = uri.Segments.Length;

return uri.Segments[numSegments - 1];

}

publicasync Task CheckSchemaStatusAsync(string connectionId, string operationId)

{

do

{

var operation = await \_graphClient.External.Connections[connectionId]

.Operations[operationId]

.Request()

.GetAsync();

if (operation.Status == ConnectionOperationStatus.Completed)

{

return;

}

elseif (operation.Status == ConnectionOperationStatus.Failed)

{

thrownew ServiceException(

new Error

{

Code = operation.Error.ErrorCode,

Message = operation.Error.Message

}

);

}

await Task.Delay(3000);

} while (true);

}

#endregion

1. Open the Program.cs file and add the below code after the **Main** method.

privatestaticasync Task RegisterSchemaAsync()

{

if (\_currentConnection == null)

{

System.Console.WriteLine(&quot;No connection selected. Please create a new connection or select an existing connection.&quot;);

return;

}

System.Console.WriteLine(&quot;Registering schema, this may take a moment...&quot;);

try

{

// Register the schema

var schema = new Schema

{

// Need to set to null, service returns 400

// if @odata.type property is sent

ODataType = null,

BaseType = &quot;microsoft.graph.externalItem&quot;,

Properties = new List\&lt;Property\&gt;

{

new Property { Name = &quot;partNumber&quot;, Type = PropertyType.Int64, IsQueryable = true, IsSearchable = false, IsRetrievable = true },

new Property { Name = &quot;name&quot;, Type = PropertyType.String, IsQueryable = true, IsSearchable = true, IsRetrievable = true },

new Property { Name = &quot;description&quot;, Type = PropertyType.String, IsQueryable = false, IsSearchable = true, IsRetrievable = true },

new Property { Name = &quot;price&quot;, Type = PropertyType.Double, IsQueryable = true, IsSearchable = false, IsRetrievable = true },

new Property { Name = &quot;inventory&quot;, Type = PropertyType.Int64, IsQueryable = true, IsSearchable = false, IsRetrievable = true },

new Property { Name = &quot;appliances&quot;, Type = PropertyType.StringCollection, IsQueryable = true, IsSearchable = true, IsRetrievable = true }

}

};

await \_graphHelper.RegisterSchemaAsync(\_currentConnection.Id, schema);

System.Console.WriteLine(&quot;Schema registered&quot;);

}

catch (ServiceException serviceException)

{

System.Console.WriteLine($&quot;{serviceException.StatusCode} error registering schema:&quot;);

System.Console.WriteLine(serviceException.Message);

return;

}

}

  1.
## Sync items

1. Under **Graph** , Open the GraphHelper.cs file and add the following code after the **Constructor** method.

#region PushData

publicasync Task AddOrUpdateItem(string connectionId, ExternalItem item)

{

// The SDK&#39;s auto-generated request builder uses POST here,

// which isn&#39;t correct. For now, get the HTTP request and change it

// to PUT manually.

var putItemRequest = \_graphClient.External.Connections[connectionId]

.Items[item.Id].Request().GetHttpRequestMessage();

putItemRequest.Method = HttpMethod.Put;

putItemRequest.Content = \_graphClient.HttpProvider.Serializer.SerializeAsJsonContent(item);

var response = await \_graphClient.HttpProvider.SendAsync(putItemRequest);

if (!response.IsSuccessStatusCode)

{

thrownew ServiceException(

new Error

{

Code = response.StatusCode.ToString(),

Message = &quot;Error indexing item.&quot;

}

);

}

}

#endregion

1. Open the Program.cs file and add the below code after the **Main** method.

privatestaticasync Task UpdateItemsFromDatabase()

{

if (\_currentConnection == null)

{

System.Console.WriteLine(&quot;No connection selected. Please create a new connection or select an existing connection.&quot;);

return;

}

List\&lt;AppliancePart\&gt; partsToUpload = null;

using (var db = new ApplianceDbContext())

{

partsToUpload = db.Parts

.ToList();

}

System.Console.WriteLine($&quot;Processing {partsToUpload.Count()} add/updates&quot;);

foreach (var part in partsToUpload)

{

var newItem = new ExternalItem

{

Id = part.PartNumber.ToString(),

Content = new ExternalItemContent

{

// Need to set to null, service returns 400

// if @odata.type property is sent

ODataType = null,

Type = ExternalItemContentType.Text,

Value = part.Description

},

Acl = new List\&lt;Acl\&gt;

{

new Acl {

AccessType = AccessType.Grant,

Type = AclType.Everyone,

Value = \_tenantId,

IdentitySource = &quot;Azure Active Directory&quot;

}

},

Properties = part.AsExternalItemProperties()

};

try

{

System.Console.Write($&quot;Uploading part number {part.PartNumber}...&quot;);

await \_graphHelper.AddOrUpdateItem(\_currentConnection.Id, newItem);

System.Console.WriteLine(&quot;DONE&quot;);

}

catch (ServiceException serviceException)

{

System.Console.WriteLine(&quot;FAILED&quot;);

System.Console.WriteLine($&quot;{serviceException.StatusCode} error adding or updating part {part.PartNumber}&quot;);

System.Console.WriteLine(serviceException.Message);

}

}

}

1.
# Configure the app

1. Open your command line interface (CLI) in the directory where PartsInventoryConnector.csproj is located. (Refer [Step 5.2](#_Add_nuget_packages))
2. Run the following command to initialize user secrets for the project.
  1. dotnet user-secrets init
3. Run the following commands to store your app ID, app secret, and tenant ID in the user secret store.

  1. dotnet user-secrets set appId &quot;YOUR\_APP\_ID\_HERE&quot; ([Step 5](#ApplicationID))
  2. dotnet user-secrets set appSecret &quot;YOUR\_APP\_SECRET\_HERE&quot; ([Step 13](#CertificatesAndsecrets))
  3. dotnet user-secrets set tenantId &quot;YOUR\_TENANT\_ID\_HERE&quot; ([Step 6](#DirectoryID))

1.
# Create the database from CSV

1. Refer [Step 3.6](#_Prerequisites).
2. dotnet ef migrations add InitialCreate
3. dotnet ef database update

**Note:** Only run the below CLI commands when any schema changes in the CSV file and reflects those changes into the SQLite database.

1. dotnet ef database drop
2. dotnet ef database update

1.
# Run the app

In this step, you will build and run the sample. This code sample will create a new connection, register the schema, then push items from the [ApplianceParts.csv](https://github.com/microsoftgraph/msgraph-search-connector-sample/blob/master/ApplianceParts.csv) file into that connection.

1. Open your command-line interface (CLI) in the PartsInventoryConnector directory.
2. Use the **dotnet**** build** command to build the sample.
3. Use the **dotnet**** run** command to run the sample.
4. Select the 1. **Create a connection** option. Enter a unique identifier, name, and description for that connection.

![](RackMultipart20210428-4-jkha36_html_26da08d4eeca379e.png)

1. Select the 2. **Register schema** for the current connection option. Then, wait for the operation to complete.

**Note:** If this step results in an error, wait a few minutes and then, select the 3 to push data.

![](RackMultipart20210428-4-jkha36_html_bf44210786033cc6.png)

1. Select the 3. **Push all items** to current connection option.

1.
# Surface the data in search

To make it easier for users to find the information that they have permission to see, create search verticals and result types to customize the search results in Microsoft **SharePoint** , **Microsoft Office** , and Microsoft Search in **Bing**.

  1.
## Create a vertical

Create and enable a search vertical at the organization level following the instructions in Customize the Microsoft Search page. So, for that sign in into [Microsoft 365 Admin center](https://admin.microsoft.com/) as a global administrator role.

1. Go to Settings à Search &amp; intelligence à **Customizations** tab.
2. Go to **Vertical** tab and click on **&quot;+ Add&quot;** button.
3. Provide the following details:
  1. **Name the vertical:** Appliance Parts.

![](RackMultipart20210428-4-jkha36_html_627b4cb354c12837.png)

  1. **Content source** : the connector created with the app. (Parts Inventory)

![](RackMultipart20210428-4-jkha36_html_891c2a044c109af0.png)

  1. **Add a query** : leave blank.

![](RackMultipart20210428-4-jkha36_html_947e023b1e757dc9.png)

  1. **Filters** : leave blank.

![](RackMultipart20210428-4-jkha36_html_372fa8603ff7b59b.png)

  1.
## Create a result type

Create a result type at the organization level by following the instructions in Customize the Microsoft Search page.

1. Go to Settings à Search &amp; intelligence à **Customizations** tab.
2. Go to the **result type** tab and click on the **&quot;+ Add&quot;** button.
3. Provide the following details:

1. **Name** : Appliance Part

![](RackMultipart20210428-4-jkha36_html_a879ce7e554f8db.png)

1. **Content source** : the connector created in the app.

![](RackMultipart20210428-4-jkha36_html_dc11341c163637d5.png)

1. **Rules** : None

![](RackMultipart20210428-4-jkha36_html_55fd3d4a67edc30f.png)

1. Paste contents of [result-type.json](https://github.com/microsoftgraph/msgraph-search-connector-sample/blob/master/result-type.json) into the layout designer textbox.

![](RackMultipart20210428-4-jkha36_html_39026b3dddbec0d7.png)

1.
# Search for results

In this step, you will search for parts in SharePoint.

1. Go to your root SharePoint site for your tenant.
2. Using the search box at the top of the page, search for **hinge**.

![](RackMultipart20210428-4-jkha36_html_10ccb7b5e054899e.png)

1. When the search completes with 0 results, select the **Appliance Parts** tab.
2. Results from the connector will be displayed.

![](RackMultipart20210428-4-jkha36_html_544414aed30871ec.png)

1.
# Summary

You have successfully completed the .NET Core Microsoft Graph connector tutorial. Now you have created a custom connector and used it to power Microsoft Search. Check out the overview of Microsoft Graph connector to see all the data you can now access with your custom connector.