---
title: "Datasets, regions, and sinks supported by Microsoft Graph Data Connect"
description: "Learn about the supported datasets, Microsoft 365 regions, and sink storage types that you can use with Microsoft Graph Data Connect."
author: "rimisra2"
ms.localizationpriority: high
ms.prod: "data-connect"
---

# Datasets, regions, and sinks supported by Microsoft Graph Data Connect

Microsoft Graph Data Connect supports a variety of datasets, data regions, and storage locations in Microsoft Azure. This article describes the supported datasets and how to access the dataset schemas, the Microsoft 365 and Microsoft Azure regions that are supported, and the storage locations that Microsoft Graph Data Connect utilizes through Azure Synapse or Azure Data Factory.

## Datasets

Microsoft Graph Data Connect currently supports the following datasets. To view the schemas for each dataset, create a new dataset in Azure Synapse or Azure Data Factory and use the Schema tab to view it.

### Azure Active Directory

| Dataset name | Description | Sample and Schema | Billing |
|--|--|--|--|
| BasicDataSet_v0.User_v0 | Contains user information (DisplayName, UserPrincipalName, and other information). | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.User_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/User_v0.md)</li></ul> | Free |
| BasicDataSet_v0.User_v1 | Contains user information. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.User_v1.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/User_v1.md)</li></ul> | Free |
| BasicDataSet_v0.Manager_v0 | Contains user information for the manager of each user. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Manager_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Manager_v0.md)</li></ul> | Free |
| BasicDataSet_v0.DirectReport_v0 | Contains user information about the employees that directly report to each user. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.DirectReport_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/DirectReport_v0.md)</li></ul> | Free |



### Outlook and Exchange Online

| Dataset name | Description | Sample and Schema | Billing |
|--|--|--|--|
| BasicDataSet_v0.CalendarView_v0 | Contains the events from the Calendar view. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.CalendarView_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/CalendarView_v0.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.Contact_v0 | Contains the available information from each user’s address book. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Contact_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Contact_v0.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.Contact_v1 | Contains contact information from each user's address book. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Contact_v1.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Contact_v1.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.Event_v0 | Contains the information from a user’s calendar events. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Event_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Event_v0.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.Event_v1 | Contains the events in each user's calendar. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Event_v1.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Event_v1.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.Inbox_v1 | Contains the mail folders from each user's inbox. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Inbox_v1.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Inbox_v1.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.MailboxSettings_v0 | Contains the mailbox settings of each user. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.MailboxSettings_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/MailboxSettings_v0.md)</li></ul> | [Free](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.MailFolder_v0 | Contains the mail folders from each user's mailbox. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.MailFolder_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/MailFolder_v0.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.Message_v0 | Contains the email messages from a user’s mailbox. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Message_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Message_v0.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.Message_v1 | Contains the email message in each user's mailbox. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Message_v1.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Message_v1.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.SentItem_v0 | Contains the messages sent from each user's mailbox. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.SentItem_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/SentItem_v0.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.SentItem_v1 | Contains the message sent from each user's mailbox. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.SentItem_v1.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/SentItem_v1.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.TodoTaskFolders_v0 | Contains all task folders in the user's mailbox. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.TodoTaskFolders_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/BasicDataSet_v0.TodoTaskFolders_v0.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.TodoTasks_v0 | Contains all the tasks in the signed-in user's mailbox. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.TodoTasks_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/BasicDataSet_v0.TodoTasks_v0.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.OutlookGroupConversations_v0  | Contains the message sent from each user's mailbox. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.OutlookGroupConversations_v0%20.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/BasicDataSet_v0.OutlookGroupConversations_v0.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |

### Microsoft Teams

| Dataset name | Description | Sample and Schema | Billing |
|--|--|--|--|
| BasicDataSet_v0.TeamChat_v1 | Contains [Teams chat messages](https://support.microsoft.com/office/first-things-to-know-about-chat-in-microsoft-teams-88ed0a06-6b59-43a3-8cf7-40c01f2f92f2) for one-on-one and group chat messages. This dataset excludes chat messages explicitly deleted by users. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.TeamChat_v1.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/TeamChat_v1.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) 
| BasicDataSet_v0.TeamsCallRecords_v1 | Contains activity records from Teams calls and meetings. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.TeamsCallRecords_v1.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/BasicDataSet_v0.TeamsCallRecords_v1.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.TeamsChannelDetails_v0  | Contains details about Channels in a team.  | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.TeamsChannelDetails_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/BasicDataSet_v0.TeamsChannelDetails_v0%20.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.TeamsStandardChannelMessages_v0  | Contains channel posts and messages from Standard Channels in Teams.    | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.TeamsStandardChannelMessages_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/BasicDataSet_v0.TeamsStandardChannelMessages_v0%20.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.TeamsTranscript_v1 | Contains transcripts from calls and meetings in Teams when the transcript is enabled for a meeting or a call.   | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.TeamsTranscript_v1.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/BasicDataSet_v0.TeamsTranscript_v1.md)</li></ul> | [Paid](https://azure.microsoft.com/pricing/details/graph-data-connect/) |

### Microsoft Groups

| Dataset name | Description | Sample and Schema | Billing |
|--|--|--|--|
| BasicDataSet_v0.GroupDetails_v0 | Contains a Teams Chat Group details. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/GroupDetails_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/GroupDetails_v0.md)</li></ul> | [Free](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.GroupMembers_v0 | Contains a Teams Chat Group member details. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/GroupMembers_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/GroupMembers_v0.md)</li></ul> | [Free](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| BasicDataSet_v0.GroupOwners_v0 | Contains the Teams Chat Group owners' details. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/GroupOwners_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/GroupOwners_v0.md)</li></ul> | [Free](https://azure.microsoft.com/pricing/details/graph-data-connect/) |

### OneDrive and SharePoint Online

Please consider that these datasets are available after 48 hours (about two days). For example, you can query data for 07/01 starting on 07/03.  

The data available is from the last 21 days (about three weeks). For example, if you would like to query data for 07/01, you can do so from 07/03 to 07/24. 

| Dataset name | Description | Sample and Schema | Billing |
|--|--|--|--|
| DocumentSharingDataset_v0_Preview | Contains information about sharing permissions of documents. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/DocumentSharingDataset_v0_Preview.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/DocumentSharingDataset_v0_Preview.md)</li></ul> | [Free](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
| SharePointSitesDataset_v0_Preview | Contains information about SharePoint sites. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/SharePointSitesDataset_v0_Preview.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/SharePointSitesDataset_v0_Preview.md)</li></ul> | [Free](https://azure.microsoft.com/pricing/details/graph-data-connect/) |
|SharePointGroupsDataset_v0_Preview | Contains SharePoint group information, including details about group members.   | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/SharePointGroupsDataset_v0_Preview.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/SharePointGroupsDataset_v0_Preview.md)</li></ul> | [Free](https://azure.microsoft.com/pricing/details/graph-data-connect/) |

### Viva Insights
| Dataset name | Description | Sample and Schema | Billing |
|--|--|--|--|
| VivaInsightsDataset_v0  | Contains Viva Insights metrics. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/VivaInsightsDataset_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/VivaInsightsDataSet_v0.md)</li></ul> | Requires Viva Insights license |

## Regions

Microsoft Graph Data Connect supports extracting data from a variety of Microsoft 365 regions. To successfully move data from the Microsoft 365 datacenter into your Microsoft Azure storage, the Azure Synapse or Azure Data Factory instance and the Azure storage location must both map to a supported region for the location of the Microsoft 365 data. 

The following table indicates which Microsoft 365 regions are supported and the corresponding Azure regions required for data movement.


| Office region | Azure region |
| ------------- | ------------ |
| **Asia-Pacific** | <ul><li>East Asia</li><li>Southeast Asia</li></ul> |
| **Australia**      | <ul><li>Australia East</li><li>Australia Southeast</li></ul> |
| **Europe**         | <ul><li>North Europe</li><li>West Europe</li></ul> |
| **North America**  | <ul><li>Central US</li><li>East US</li><li>East US 2</li><li>North Central US</li><li>South Central US</li><li>West Central US</li><li>West US</li><li>West US 2</li></ul> |
| **United Kingdom** | <ul><li>UK South</li><li>UK West</li></ul> |  
| **Canada (CAN)** | <ul><li>Canada Central</li><li>Canada East</li></ul> |
| **Japan (JPN)** | <ul><li>Japan West</li><li>Japan East</li></ul> |
| **India (IND)** | <ul><li>South India</li><li>Central India</li></ul> |
| **Korea (KOR)** | <ul><li>Korea Central</li><li>Korea South</li></ul> |
| **Switzerland (CHE)** | <ul><li>Switzerland North</li></ul> |
| **Germany (DEU)** | <ul><li>Germany West Central</li></ul> |
| **Norway (NOR)** | <ul><li>Norway East</li></ul> |
| **France (FRA)** | <ul><li>France Central</li></ul> |
| **UAE (UAE)** | <ul><li>UAE North</li></ul> |

## Sinks

Sinks are the output location that Azure Synapse or Azure Data Factory uses to place data in Azure storage. Microsoft Graph Data Connect supports the following sink storage types:

- [Azure Data Lake Storage Gen1](/azure/data-lake-store/data-lake-store-overview)
- [Azure Data Lake Storage Gen2](/azure/storage/blobs/data-lake-storage-introduction)
- [Azure Storage Blob](/azure/storage/blobs/storage-blobs-overview)
- [Azure SQL DB](https://azure.microsoft.com/products/azure-sql/database/?ef_id=_k_790773b85b8d1e4ef64317867aeee8a0_k_&OCID=AIDcmm5edswduu_SEM__k_790773b85b8d1e4ef64317867aeee8a0_k_&msclkid=790773b85b8d1e4ef64317867aeee8a0) (mapping data flows only)

The following characteristics apply to sinks:

- Service Principal authentication is the only supported authentication mechanism for all sink types in a copy activity with Microsoft 365 as the source.

- When using Azure Storage Blob as the sink, you must ensure that your application has Storage Blob Data Contributor access to the Azure Storage Blob location.

- For copy activity, the output files are formatted as JSON. This format is fixed and modifying the format is not supported. However, you can use Azure Synapse or Azure Data Factory to copy the result of a Microsoft Graph Data Connect pipeline into another storage mechanism (such as Azure SQL Database).
- Mapping data flows: [Copy and transform data from Microsoft 365 (Office 365) - Azure Data Factory & Azure Synapse | Microsoft Learn |](/azure/data-factory/connector-office-365?tabs=data-factory#transform-data-with-the-microsoft-365-connector)

    - Output can be in parquet format. For details about the supported data transformations, see [Flatten transformation in mapping data flow](/azure/data-factory/data-flow-flatten).

    - Microsoft Graph Data Connect on mapping data flows supports direct output of the data into Azure SQL DB.

&nbsp;

The following table indicates the areas that are supported for the corresponding copy activity and mapping data flows.

| Area | Copy Activity | Mapping data flows |
| ---- | ------------- | ------------------------------ |
| Output data formats supported | JSON | JSON, Parquet  |
| Data transformation (normalization/flattening/etc.)  | Requires additional transformation step in the ADF/Synapse pipeline | Supports inline transformations |
| Supported data sinks  | ADLS gen2, Azure Blob  | ADLS gen2, Azure Blob, Azure SQL DB  |
| Azure VNET IR   | Not supported | Supported |

## See also

- [Azure Synapse and Azure Data Factory connector for Microsoft 365 data](/azure/data-factory/connector-office-365)
- [Policies and billing](data-connect-policies.md)
