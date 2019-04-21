---
title: "Datasets, regions and sinks"
description: "Contains the supported datasets and destination storage types that can be used with Microsoft Graph data connect"
author: "tlenig"
localization_priority: Priority
ms.prod: "data-connect"
---

# Datasets, regions and sinks

Microsoft Graph data connect supports a variety of datasets, data regions and storage locations in Microsoft Azure. This topic outlines the supported datasets and how to access their schemas, the Office 365 and Microsoft Azure regions that are supported, and the storage locations that data connect utilizes through Azure Data Factory.

If you would like to see additional datasets, regions or sinks supported, let us know on [UserVoice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests?category_id=359581).

## Datasets

Data connect supports the following data sets today. To view the schemas for each data set, create a new data set in ADF and use the Schema tab to view it. More detailed steps are found in the UX walk through at the bottom of Run Azure Data Factory pipelines to copy Office 365 Data.
|Data set name|Description|
|-------------|-----------|
|BasicDataSet_v0.Contact_v0|This table contains contact information from each user's address book. The schema for these entities corresponds to the [Microsoft Graph personal contacts schema](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/contact)| 
|BasicDataSet_v0.Event_v0|This table contains the events in each user's calendar. The schema for these entities corresponds to the [Microsoft Graph calendar events schema](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/event)| 
|BasicDataSet_v0.Message_v0|This table contains the message in each user's mailbox. The schema for these entities corresponds to the [Microsoft Graph messages schema](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/message)| 
|BasicDataSet_v0.SentItem_v0|This table contains the messages sent from each user's mailbox. The schema for these entities corresponds to the [Microsoft Graph messages schema](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/message)| 
|BasicDataSet_v0.User_v0|This table contains user information (DisplayName, UserPrincipalName, etc).| 
|BasicDataSet_v0.MailboxSettings_v0|This table contains the mailbox settings of each user. The schema for these entities corresponds to the [Microsoft Graph mailbox settings schema](https://docs.microsoft.com/en-us/graph/api/resources/mailboxsettings?view=graph-rest-1.0)| 
|BasicDataSet_v0.MailFolder_v0|This table contains the mail folders from each user's mailbox. The schema for these entities corresponds to the [Microsoft Graph mail folders schema](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/mailfolder)|
|BasicDataSet_v0.Manager_v0|This table contains user information for the manager of each user. The schema for these entities corresponds to [Microsoft Graph user schema](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/user)|
|BasicDataSet_v0.DirectReport_v0|This table contains user information about the employees that directly report to each user. The schema for these entities corresponds to the [Microsoft Graph user schema](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/user)|
|BasicDataSet_v0.User_v1|This table contains user information. The schema for these entities corresponds to the [Microsoft Graph user schema](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/user)|

## Regions

Data connect supports extracting data from a variety of different Office 365 regions. To successfully move data from the Office 365 datacenter into your Microsoft Azure storage, the Azure Data Factory instance and the Azure storage location must both map to a supported region for the location of the Office 365 data. Refer to the table below for which Office 365 regions are supported and the corresponding Azure regions required for data movement. 

| Office Region                    | Azure Region                                |
|----------------------------------|---------------------------------------------|
| **North America**                | EAST US                                     |
|                                  | EAST US 2                                   |
|                                  | Central US                                  |
|                                  | North Central US                            |
|                                  | South Central US                            |
|                                  | West Central US                             | 
|                                  | West US                                     |
|                                  | West US 2                                   |  
|                                                                                |
| **Europe**                       | North Europe                                |
|                                  | West Europe                                 |
|                                                                                |
| **Asia-Pacific**                 | East Asia                                   |
|                                  | Southeast Asia                              |
|                                                                                |
| **Australia**                    | Australia East                              |
|                                  | Australia Southeast                         |

## Sinks

Sinks are the output location Data Factory uses to place data in Azure storage. Data connect supports the following sink storage types:
- Azure Data Lake Storage Gen 2
- Azure Storage Blob
- Azure Data Lake Storage Gen 1

The following characteristics apply to sinks: 
- The output files will be of format Json lines. The output format is fixed and there is no support for modifying the format of the output. However, you can use Azure Data Factory to copy the result of a data connect pipeline into another storage mechanism (such as Azure SQL DB).
- Service Principal authentication is the only supported authentication mechanism for all sink types in a copy activity with Office 365 as the source.
- When using Azure Storage Blob as the sink, you must ensure that your application has Storage Blob Data Contributor access to the Azure Storage Blob location.

## Next Steps

Visit the [Azure Data Factory Office 365 connector documentation](https://docs.microsoft.com/en-us/azure/data-factory/connector-office-365) for more information on how to create data connect pipelines as a part of an Azure Data Factory.  