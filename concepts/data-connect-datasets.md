---
title: "Datasets, regions, and sinks supported by Microsoft Graph Data Connect"
description: "Learn about the supported datasets, Microsoft 365 regions, and sink storage types that you can use with Microsoft Graph Data Connect."
author: "michaelvenables"
ms.author: "rimisra"
ms.localizationpriority: high
ms.subservice: "data-connect"
#Customer intent: As a data analyst, I want to understand the datasets, regions, and storage locations supported by Microsoft Graph Data Connect, so that I can determine if it meets my data analysis needs.
---

# Datasets, regions, and sinks supported by Microsoft Graph Data Connect

Microsoft Graph Data Connect supports a variety of datasets, data regions, and storage locations in Microsoft Azure. This article describes the supported datasets and how to access the dataset schemas, the Microsoft 365 and Microsoft Azure regions that are supported, and the storage locations that Microsoft Graph Data Connect utilizes through Azure Synapse or Azure Data Factory.

## Datasets

Microsoft Graph Data Connect currently supports the following datasets. To view the schemas for each dataset, create a new dataset in Azure Synapse or Azure Data Factory and go to the Schema tab.

<a name='azure-active-directory'></a>

### Activities

| Dataset name | Description | Learn more |
| --- | --- | --- |
| OutlookContactActivity_v0 | Provides employees' activity with their contacts in Microsoft Outlook. | [OutlookContactActivity_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-outlookcontactactivity.md) |
| OutlookMailActivity_v0 | Provides employees' activity with their email in Outlook. | [OutlookMailActivity_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-outlookmailactivity.md) |
| OutlookMeetingActivity_v0 | Provides employees' activity with their meetings in Outlook. | [OutlookMeetingActivity_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-outlookmeetingactivity.md) |
| TeamsChannelActivity_v0 | Providesemployees' activity with their channels in Microsoft Teams. | [TeamsChannelActivity_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-teamschannelactivity.md) |
| TeamsConversationActivity_v0 | Provides employees' activity with their teams and chats in Teams. | [TeamsConversationActivity_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-teamsconversationactivity.md) |

### Call records

| Dataset name | Description | Learn more |
| --- | --- | --- |
| TeamsCallRecords_v1 | Provides activity records from Teams calls and meetings. | [TeamsCallRecords_v1 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-teamscallrecords1.md) |

### Channel

| Dataset name | Description | Learn more |
| --- | --- | --- |
| TeamsChannelDetails_v0 | Generates a list of Microsoft Teams channels. | [TeamsChannelDetails_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-teamschanneldetails.md) |

### Contact

| Dataset name | Description | Learn more |
| --- | --- | --- |
| Contact_v0 | Provides contact details available from each user's address book. | [Contact_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-contact.md) |
| Contact_v1 | Provides the contact details available from each user's address book. | [Contact_v1 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-contact1.md) |

### Devices and Licenses
| Dataset name | Description | Learn more |
| --- | --- | --- |
| OwnedDevices_v0 | Provides detailed information related to all the devices that are owned by each user in the organization. | [OwnedDevices_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-owneddevices.md) |
| RegisteredDevices_v0 | Provides detailed information related to all the devices that a user is registered on in the organization. | [RegisteredDevices_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-registereddevices.md) |
| LicenseDetails_v0 | Provides details for users' licenses that are directly assigned and those transitively assigned through memberships in licensed groups. | [LicenseDetails_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-licensedetails.md) |

### Event

| Dataset name | Description | Learn more |
| --- | --- | --- |
| CalendarView_v0 | Provides occurrences, exceptions and single instances of events, based on the calendar view from users' calendars. | [CalendarView_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-calendarview.md) |
| ConferenceRoomCalendar_v0 | Provides CalendarView data of the Conference Rooms created for a tenant. | [ConferenceRoomCalendar_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-conferenceroomcalendar.md) |
| Event_v0 | Provides all the events from users' calendars. | [Event_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-event.md) |
| Event_v1 | Provides all the events from users' calendars. | [Event_v1 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-event1.md) |

### Group

| Dataset name | Description | Learn more |
| --- | --- | --- |
| GroupDetails_v0 | Provides the Microsoft Entra ID (Azure AD) groups data for a tenant. | [GroupDetails_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-groupdetails.md) |
| GroupMembers_v0 | Generates a list of direct members of all groups. | [GroupMembers_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-groupmembers.md) |
| GroupOwners_v0 | Retrieves the list of all the group owners. | [GroupOwners_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-groupowners.md) |

### Mail

| Dataset name | Description | Learn more |
| --- | --- | --- |
| Message_v0 | Provides a collection of all the messages received by a user in mail folders. | [Message_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-message.md) |
| Message_v1 | Provides a collection of all the messages received by a user in mail folders. | [Message_v1 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-message1.md) |
| SentItems_v0 | Provides a collection of all the sent emails by all users of a tenant. | [SentItems_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-sentitems.md) |
| SentItems_v1 | Provides a collection of all the sent emails with some additional fields. | [SentItems_v1 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-sentitems1.md) |

### Mail folder

| Dataset name | Description | Learn more |
| --- | --- | --- |
| Inbox_v1 | Provides the messages from users' mail folders. | [Inbox_v1 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-inbox.md) |
| Mailfolder_v0 | Provides information on all the folders created in a user's mailbox. | [Mailfolder_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-mailfolder.md) |
| Mailfolder_v2 | Provides the information on all mail folders created in a user's mailbox. | [Mailfolder_v2 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-mailfolder2.md) |

### Mailbox settings

| Dataset name | Description | Learn more |
| --- | --- | --- |
| MailboxSettings_v0 | Provides details of all users' mailbox settings. | [MailboxSettings_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-mailboxsettings.md) |

### Message

| Dataset name | Description | Learn more |
| --- | --- | --- |
| OutlookGroupConversations_v0 | Provides a collection of group conversations between users of tenant. | [OutlookGroupConversations_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-outlookgroupconversations.md) |
| TeamChat_v1 | Provides Teams chat messages for one-on-one and group chat messages. | [TeamChat_v1 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-teamchat.md) |
| TeamChat_v2 | Provides Teams chat messages for one-on-one and group chat messages. | [TeamChat_v2 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-teamchat2.md) |
| TeamsStandardChannelMessages_v0 | Provides channel posts and messages from standard channels in Teams. | [TeamsStandardChannelMessages_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-teamsstandardchannelmessages.md) |

### Online meetings

| Dataset name | Description | Learn more |
| --- | --- | --- |
| TeamsTranscript_v1 | Provides transcripts from calls and meetings in Teams when the transcript is enabled for a meeting or a call. | [TeamsTranscript_v1 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-teamstranscript1.md) |

### Org hierarchy

| Dataset name | Description | Learn more |
| --- | --- | --- |
| DirectReport_v0 | Provides details of all the direct reports for your users. | [DirectReport_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-directreport.md) |
| Manager_v0 | Provides a list of users assigned as managers. | [Manager_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-manager.md) |

### Task

| Dataset name | Description | Learn more |
| --- | --- | --- |
| TodoTaskFolders_v0 | Identifies task folders in Microsoft Outlook that track user-level work items. | [TodoTaskFolders_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-todotaskfolders.md) |
| TodoTasks_v0 | Identifies tasks in Microsoft Outlook that track user-level work items. | [TodoTasks_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-todotasks.md) |
| PlannerTasks_v0 | Identifies tasks in Planner that track user-level work items. | [PlannerTasks_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-plannertasks.md) |

### User

| Dataset name | Description | Learn more |
| --- | --- | --- |
| User_v0 | Provides user details stored for all the Microsoft Entra ID (Azure AD) user accounts that are created for a particular tenant. | [User_v0 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-user.md) |
| User_v1 | Provides user details stored for all the Microsoft Entra ID (Azure AD) user accounts. | [User_v1 dataset](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-user1.md) |

### OneDrive and SharePoint Online

| Dataset name | Description | Sample and Schema |
| --- | --- | --- |
| SharePointSites_v1  | Contains information about SharePoint sites. Formerly known as SharePointSitesDataset_v0_Preview.| [SharePointSites_v1](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-sharepointsites.md) |
| SharePointPermissions_v1 | Contains information about sharing permissions. Formerly DocumentSharingDataset_v0_Preview. | [SharePointPermissions_v1](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-sharepointpermissions.md) |
| SharePointGroups_v1 | Contains SharePoint group information, including details about group members. Formerly SharePointGroupsDataset_v0_Preview. | [SharePointGroups_v1](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-sharepointgroups.md) |
| SharePointFiles_v1  | Contains information about SharePoint files. Coming in June 2024. | [SharePointFiles_v1](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-sharepointfiles.md) |
| SharePointFileActions_v1 | Contains information about SharePoint file actions. Coming in March 2024. | [SharePointFileActions_v1](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-sharepointfileactions.md) |
| OneDriveSyncHealth_v1 | Contains information about devices running OneDrive for Business. Coming in March 2024. | [OneDriveSyncHealth_v1](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/Datasets/data-connect-dataset-onedrivesynchealth.md) |

### Viva Insights

| Dataset name | Description | Sample and Schema | License |
| --- | --- | --- | --- |
| VivaInsightsDataset_PersonReport_v1 | Contains Viva Insights metrics. | <ul><li> [Sample](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/VivaInsightsDataset_v0.json)</li><li>[Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/VivaInsightsDataSet_v0.md)</li></ul> | Requires Viva Insights license |


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

- [Azure Data Lake Storage Gen2](/azure/storage/blobs/data-lake-storage-introduction)
- [Azure Storage Blob](/azure/storage/blobs/storage-blobs-overview)
- [Azure SQL DB](https://azure.microsoft.com/products/azure-sql/database/?ef_id=_k_790773b85b8d1e4ef64317867aeee8a0_k_&OCID=AIDcmm5edswduu_SEM__k_790773b85b8d1e4ef64317867aeee8a0_k_&msclkid=790773b85b8d1e4ef64317867aeee8a0) (mapping data flows only)

The following characteristics apply to sinks:

- Service Principal authentication is the only supported authentication mechanism for all sink types in a copy activity with Microsoft 365 as the source.

- When using Azure Storage Blob as the sink, you must ensure that your application has Storage Blob Data Contributor access to the Azure Storage Blob location.

- For copy activity, the output files are formatted as JSON. This format is fixed and modifying the format isn't supported. However, you can use Azure Synapse or Azure Data Factory to copy the result of a Microsoft Graph Data Connect pipeline into another storage mechanism (such as Azure SQL Database).
- Mapping data flows: [Copy and transform data from Microsoft 365 (Office 365) - Azure Data Factory & Azure Synapse | Microsoft Learn |](/azure/data-factory/connector-office-365?tabs=data-factory#transform-data-with-the-microsoft-365-connector)

  - Output can be in parquet format. For details about the supported data transformations, see [Flatten transformation in mapping data flow](/azure/data-factory/data-flow-flatten).

  - Microsoft Graph Data Connect on mapping data flows supports direct output of the data into Azure SQL DB.

&nbsp;

The following table indicates the areas that are supported for the corresponding copy activity and mapping data flows.

| Area | Copy activity | Mapping data flows |
| ---- | ------------- | ------------------------------ |
| Output data formats supported | JSON | JSON, Parquet  |
| Data transformation (normalization/flattening/etc.)  | Requires additional transformation step in the ADF/Synapse pipeline | Supports inline transformations |
| Supported data sinks  | ADLS gen2, Azure Blob  | ADLS gen2, Azure Blob, Azure SQL DB  |
| Azure VNET IR   | Not supported | Supported |

## Related content

- [Azure Synapse and Azure Data Factory connector for Microsoft 365 data](/azure/data-factory/connector-office-365)
<!--- [Policies and billing](data-connect-policies.md)-->
