---
title: "Datasets, regions, and sinks supported by Microsoft Graph Data Connect"
description: "Learn about the supported datasets, Microsoft 365 regions, and sink storage types that you can use with Microsoft Graph Data Connect."
author: "michaelvenables"
ms.author: "rimisra"
ms.localizationpriority: high
ms.prod: "data-connect"
---

# Datasets, regions, and sinks supported by Microsoft Graph Data Connect

Microsoft Graph Data Connect supports a variety of datasets, data regions, and storage locations in Microsoft Azure. This article describes the supported datasets and how to access the dataset schemas, the Microsoft 365 and Microsoft Azure regions that are supported, and the storage locations that Microsoft Graph Data Connect utilizes through Azure Synapse or Azure Data Factory.

## Datasets

Microsoft Graph Data Connect currently supports the following datasets. To view the schemas for each dataset, create a new dataset in Azure Synapse or Azure Data Factory and use the Schema tab to view it.

### Call records

| Dataset name | Details |
| --- | --- |
| TeamsCallRecords_v1 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-teamscallrecords1.md) |

### Channel

| Dataset name | Details |
| --- | --- |
| TeamsChannelDetails_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-teamschanneldetails.md) |

### Contact

| Dataset name | Details |
| --- | --- |
| Contact_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-contact.md) |
| Contact_v1 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-contact1.md) |

### Event

| Dataset name | Details |
| --- | --- |
| CalendarView_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-calendarview.md) |
| ConferenceRoomCalendar_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-conferenceroomcalendar.md) |
| Event_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-event.md) |
| Event_v1 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-event1.md) |

### Group

| Dataset name | Details |
| --- | --- |
| GroupDetails_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-groupdetails.md) |
| GroupMembers_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-groupmembers.md) |
| GroupOwners_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-groupowners.md) |

### Mail

| Dataset name | Details |
| --- | --- |
| Message_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-message.md) |
| Message_v1 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-message1.md) |
| SentItems_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-sentitems.md) |
| SentItems_v1 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-sentitems1.md) |

### Mail folder

| Dataset name | Details |
| --- | --- |
| Inbox_v1 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-inbox.md) |
| Mailfolder_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-mailfolder.md) |
| Mailfolder_v2 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-mailfolder2.md) |

### Mailbox settings

| Dataset name | Details |
| --- | --- |
| MailboxSettings_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-mailboxsettings.md) |

### Message

| Dataset name | Details |
| --- | --- |
| OutlookGroupConversations_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-outlookgroupconversations.md) |
| TeamChat_v1 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-teamchat.md) |
| TeamChat_v2 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-teamchat2.md) |
| TeamsStandardChannelMessages_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-teamsstandardchannelmessages.md) |

### Online meetings

| Dataset name | Details |
| --- | --- |
| TeamsTranscript_v1 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-teamstranscript1.md) |

### Org hierarchy

| Dataset name | Details |
| --- | --- |
| DirectReport_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-directreport.md) |
| Manager_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-manager.md) |

### Task

| Dataset name | Details |
| --- | --- |
| TodoTaskFolders_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-todotaskfolders.md) |
| TodoTasks_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-todotasks.md) |

### User

| Dataset name | Details |
| --- | --- |
| User_v0 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-user.md) |
| User_v1 | [Learn more](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-user1.md) |

## Regions

Microsoft Graph Data Connect supports extracting data from a variety of Microsoft 365 regions. To successfully move data from the Microsoft 365 data center into your Microsoft Azure storage, the Azure Synapse or Azure Data Factory instance and the Azure storage location must both map to a supported region for the location of the Microsoft 365 data.

The following table indicates which Microsoft 365 regions are supported and the corresponding Azure regions required for data movement.

| Office region | Azure region |
| ------------- | ------------ |
| **Asia-Pacific** | <ul><li>East Asia</li><li>Southeast Asia</li></ul> |
| **Australia**      | <ul><li>Australia East</li><li>Australia Southeast</li></ul> |
| **Europe**         | <ul><li>North Europe</li><li>West Europe</li></ul> |
| **North America**  | <ul><li>Central US</li><li>East US</li><li>East US 2</li><li>North Central US</li><li>South Central US</li><li>West Central US</li><li>West US</li><li>West US 2</li></ul> |
| **Brazil** | <ul><li>Brazil South</li></ul> |
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