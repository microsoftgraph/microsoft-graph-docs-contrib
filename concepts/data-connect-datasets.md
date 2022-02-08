---
title: "Datasets, regions, and sinks supported by Microsoft Graph Data Connect"
description: "Describes the supported datasets and destination storage types that can be used with Microsoft Graph Data Connect."
author: "fercobo-msft"
ms.localizationpriority: high
ms.prod: "data-connect"
---

# Datasets, regions, and sinks supported by Microsoft Graph Data Connect

Microsoft Graph Data Connect supports a variety of datasets, data regions, and storage locations in Microsoft Azure. This topic describes the supported datasets and how to access the dataset schemas, the Microsoft 365 and Microsoft Azure regions that are supported, and the storage locations that data connect utilizes through Azure Data Factory.

## Datasets

Data connect supports several datasets today, including Azure Active Directory, Outlook and Exchange Online, and many more. You can find more details such as samples, schemas, and billing details for each category below.

### Azure Active Directory

| Dataset name | Description | Sample and Schema | Billing |
|--|--|--|--|
| BasicDataSet_v0.User_v0 | Contains user information (DisplayName, UserPrincipalName, and other information). | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.User_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/User_v0.md)</li></ul> | Free |
| BasicDataSet_v0.User_v1 | Contains user information. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.User_v1.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/User_v1.md)</li></ul> | Free |
| BasicDataSet_v0.Manager_v0 | Contains user information for the manager of each user. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Manager_v0.json).json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Manager_v0.md)</li></ul> | Free |
| BasicDataSet_v0.DirectReport_v0 | Contains user information about the employees that directly report to each user. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.DirectReport_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/DirectReport_v0.md)</li></ul> | Free |

### Outlook and Exchange Online

| Dataset name | Description | Sample and Schema | Billing |
|--|--|--|--|
| BasicDataSet_v0.CalendarView_v0 | Contains the events from the Calendar view. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.CalendarView_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/CalendarView_v0.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.Event_v0 | Contains the information from a user’s calendar events. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Event_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Event_v0.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.Event_v1 | Contains the events in each user's calendar. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Event_v1.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Event_v1.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.Inbox_v1 | Contains the mail folders from each user's inbox. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Inbox_v1.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Inbox_v1.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.MailboxSettings_v0 | Contains the mailbox settings of each user. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.MailboxSettings_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/MailboxSettings_v0.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.MailFolder_v0 | Contains the mail folders from each user's mailbox. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.MailFolder_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/MailFolder_v0.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.SentItem_v0 | Contains the messages sent from each user's mailbox. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.SentItem_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/SentItem_v0.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.SentItem_v1 | Contains the message sent from each user's mailbox. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.SentItem_v1.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/SentItem_v1.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.Contact_v0 | Contains the available information from each user’s address book. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Contact_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Contact_v0.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.Contact_v1 | Contains contact information from each user's address book. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Contact_v1.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Contact_v1.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.Message_v0 | Contains the email messages from a user’s mailbox. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Message_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Message_v0.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.Message_v1 | Contains the email message in each user's mailbox. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Message_v1.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Message_v1.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |

### Microsoft Teams

| Dataset name | Description | Sample and Schema | Billing |
|--|--|--|--|
| BasicDataSet_v0.TeamChat_v1 | Contains [Teams chat messages](https://support.microsoft.com/office/first-things-to-know-about-chat-in-microsoft-teams-88ed0a06-6b59-43a3-8cf7-40c01f2f92f2) for one-on-one and group chat messages. This dataset excludes chat messages explicitly deleted by users. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.TeamChat_v1.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/TeamChat_v1.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.TeamChannelDetails |  |  | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.TeamChannelMessage |  |  | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |

### OneDrive and SharePoint Online

| Dataset name | Description | Sample and Schema | Billing |
|--|--|--|--|
| DocumentSharingDataset_v0_Preview | Contains information about sharing permissions of documents. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/DocumentSharingDataset_v0_Preview.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/DocumentSharingDataset_v0_Preview.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| FileActivityDataset_v0 |  |  | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| SiteUsageDataset_v0 |  |  | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |

### Viva Insights

| Dataset name | Description | Sample and Schema | Billing |
|--|--|--|--|
| CollaborationMetrics_v0 |  |  | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| ManagerHours_v0 |  |  | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |

## Regions

Data Connect supports extracting data from a variety of different Microsoft 365 regions. To successfully move data from the Microsoft 365 data center into your Microsoft Azure storage, the Azure Data Factory instance and the Azure storage location must both map to a supported region for the location of the Microsoft 365 data. The following table indicates which Microsoft 365 regions are supported and the corresponding Azure regions required for data movement.

|  | Azure region |
|--|--|
| **Asia-Pacific** | <ul><li>East Asia</li><li>Southeast Asia</li></ul> |
| **Australia** | <ul><li>Australia East</li><li>Australia Southeast</li></ul> |
| **Europe** | <ul><li>North Europe</li><li>West Europe</li></ul> |
| **North America** | <ul><li>Central US</li><li>East US</li><li>East US 2</li><li>North Central US</li><li>South Central US</li><li>West Central US</li><li>West US</li><li>West US 2</li></ul> |
| **United Kingdom** | <ul><li>UK South</li><li>UK West</li></ul> |

## Sink

Sinks are the output location Data Factory uses to place data in Azure storage. Data Connect supports the following sink storage types:

- [Azure Data Lake Storage Gen 1](/azure/data-lake-store/data-lake-store-overview)
- [Azure Data Lake Storage Gen 2](/azure/storage/blobs/data-lake-storage-introduction)
- [Azure Storage Blob](/azure/storage/blobs/storage-blobs-overview)

The following characteristics apply to sinks:

- The output files will be of format JSON lines. The output format is fixed and there is no support for modifying the format of the output. However, you can use Azure Data Factory to copy the result of a data connect pipeline into another storage mechanism (such as Azure SQL DB).
- Service Principal authentication is the only supported authentication mechanism for all sink types in a copy activity with Microsoft 365 as the source.
- When using Azure Storage Blob as the sink, you must ensure that your application has Storage Blob Data Contributor access to the Azure Storage Blob location.

## See also

- [Azure Data Factory connector for Microsoft 365 data](/azure/data-factory/connector-office-365)
- [Policies and billing](data-connect-policies.md)
