---
title: "Datasets, regions, and sinks supported by Microsoft Graph Data Connect"
description: "Describes the supported datasets and destination storage types that can be used with Microsoft Graph Data Connect."
author: "fercobo-msft"
ms.localizationpriority: high
ms.prod: "data-connect"
---

# Datasets, regions, and sinks supported by Microsoft Graph Data Connect

Microsoft Graph Data Connect supports extracting data from a variety of Microsoft 365 regions. To successfully move data from the Microsoft 365 datacenter into your Microsoft Azure storage, the Azure Synapse or Azure Data Factory instance and the Azure storage location must both map to a supported region for the location of the Microsoft 365 data. 

The following table indicates which Microsoft 365 regions are supported and the corresponding Azure regions required for data movement. 

>****Note:*** This indicates the Azure regions that may NOT be used per region for the destination storage **when it is closed for public access.** This is also the region for which the IP addresses need to be allowlisted to allow data delivery. To find IP ranges, see  [Azure IP Ranges and Service Tags.](https://www.microsoft.com/en-us/download/details.aspx?id=56519) 

For details on this destination storage region restriction, see: 

[Azure Integration Runtime IP addresses - Azure Data Factory | Microsoft Docs](https://learn.microsoft.com/en-us/azure/data-factory/azure-integration-runtime-ip-addresses#known-issue-with-azure-storage) 

[Configure Azure Storage firewalls and virtual networks | Microsoft Docs](https://learn.microsoft.com/en-us/azure/storage/common/storage-network-security?tabs=azure-portal#grant-access-from-an-internet-ip-range)

## Datasets

Data connect supports the following datasets today. To view the schemas for each dataset, create a new dataset in Azure Data Factory and use the Schema tab to view it.

| Dataset name | Description | Sample | Schema |
|--------------|-------------|--------|--------|
| BasicDataSet_v0.CalendarView_v0    | Contains the events from the Calendar view.                                        | [CalendarView_v0](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.CalendarView_v0.json)      | [Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/CalendarView_v0.md) |
| BasicDataSet_v0.Contact_v0         | Contains the available information from each user’s address book.                  | [Contact_v0](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Contact_v0.json)                | [Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Contact_v0.md) |
| BasicDataSet_v0.Contact_v1         | Contains contact information from each user's address book.                        | [Contact_v1](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Contact_v1.json)                | [Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Contact_v1.md) |
| BasicDataSet_v0.DirectReport_v0    | Contains user information about the employees that directly report to each user.   | [DirectReport_v0](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.DirectReport_v0.json)      | [Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/DirectReport_v0.md) |
| BasicDataSet_v0.Event_v0           | Contains the information from a user’s calendar events.                            | [Event_v0](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Event_v0.json)                    | [Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Event_v0.md) |
| BasicDataSet_v0.Event_v1           | Contains the events in each user's calendar.                                       | [Event_v1](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Event_v1.json)                    | [Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Event_v1.md) |
| BasicDataSet_v0.MailboxSettings_v0 | Contains the mailbox settings of each user.                                        | [MailboxSetting_v0](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.MailboxSettings_v0.json) | [Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/MailboxSettings_v0.md) |
| BasicDataSet_v0.MailFolder_v0      | Contains the mail folders from each user's mailbox.                                | [MailFolder_v0](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.MailFolder_v0.json)          | [Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/MailFolder_v0.md) |
| BasicDataSet_v0.Manager_v0         | Contains user information for the manager of each user.                            | [Manager_v0](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Manager_v0.json)                | [Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Manager_v0.md) |
| BasicDataSet_v0.Message_v0         | Contains the email messages from a user’s mailbox.                                       | [Message_v0](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Message_v0.json)                | [Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Message_v0.md) |
| BasicDataSet_v0.Message_v1         | Contains the email message in each user's mailbox.                                       | [Message_v1](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.Message_v1.json)                | [Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/Message_v1.md) |
| BasicDataSet_v0.SentItem_v0        | Contains the messages sent from each user's mailbox.                               | [SentItem_v0](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.SentItem_v0.json)              | [Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/SentItem_v0.md) |
| BasicDataSet_v0.SentItem_v1        | Contains the message sent from each user's mailbox.                                | [SentItem_v1](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.SentItem_v1.json)              | [Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/SentItem_v1.md) |
| BasicDataSet_v0.TeamChat_v1        | Contains [Teams chat messages](https://support.microsoft.com/office/first-things-to-know-about-chat-in-microsoft-teams-88ed0a06-6b59-43a3-8cf7-40c01f2f92f2) for one-on-one and group chat messages. This dataset excludes chat messages explicitly deleted by users.     | [TeamChat_v1](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.TeamChat_v1.json)              | [Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/TeamChat_v1.md) |
| BasicDataSet_v0.User_v0            | Contains user information (DisplayName, UserPrincipalName, and other information). | [User_v0](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.User_v0.json)                      | [Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/User_v0.md) |
| BasicDataSet_v0.User_v1            | Contains user information.                                                         | [User_v1](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/sampledatasets/BasicDataSet_v0.User_v1.json)                      | [Schema](https://github.com/microsoftgraph/dataconnect-solutions/blob/main/datasetschemas/User_v1.md) |

## Regions

Data Connect supports extracting data from a variety of different Microsoft 365 regions. To successfully move data from the Microsoft 365 data center into your Microsoft Azure storage, the Azure Data Factory instance and the Azure storage location must both map to a supported region for the location of the Microsoft 365 data. The following table indicates which Microsoft 365 regions are supported and the corresponding Azure regions required for data movement.

| Office region | Azure region | Alternate Azure regions to use |
| ------------- | ------------ | ------------------------------ |
| **Asia-Pacific**   | <ul><li>East Asia</li><li>Southeast Asia*</li></ul> |  |
| **Australia**      | <ul><li>Australia East</li><li>Australia Southeast*</li></ul> |  |
| **Europe**         | <ul><li>North Europe</li><li>West Europe*</li></ul> |  |
| **North America**  | <ul><li>Central US</li><li>East US*</li><li>East US 2</li><li>North Central US</li><li>South Central US</li><li>West Central US</li><li>West US</li><li>West US 2</li></ul> |  |
| **United Kingdom** | <ul><li>UK South*</li><li>UK West</li></ul> |  |
| **Canada (CAN)** | <ul><li>Canada Central</li><li>Canada East*</li></ul> |  |
| **Japan (JPN)** | <ul><li>Japan West</li><li>Japan East*</li></ul> |  |
| **India (IND)** | <ul><li>South India*</li><li>Central India</li></ul> |  |
| **Korea (KOR)** | <ul><li>Korea Central</li><li>Korea South</li></ul> |  |
| **Switzerland (CHE)** | <ul><li>Switzerland North</li></ul> | <ul><li>North Europe</li> <li>West Europe</li></ul> |
| **Germany (DEU)** | <ul><li>Germany West Central*</li></ul> | <ul><li>North Europe</li> <li>West Europe</li></ul> |
| **Norway (NOR)** | <ul><li>Norway East*</li></ul> | <ul><li>North Europe</li> <li>West Europe</li></ul> |
| **France (FRA)** | <ul><li>France Central*</li></ul> | <ul><li>North Europe</li> <li>West Europe</li></ul> |
| **UAE (UAE)** | <ul><li>UAE North*</li></ul> | <ul><li>East Asia</li> <li>Southeast Asia</li></ul> |

## Sinks

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
