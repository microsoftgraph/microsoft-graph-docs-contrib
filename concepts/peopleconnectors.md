---
title: Microsoft 365 Copilot connectors for people data
description: Microsoft 365 Copilot connectors for people data
author: hapelthun
ms.author: shivansingh 
ms.service: microsoft-365-copilot
ms.topic: article
ms.date:  06/02/2025
ms.subservice: developer
---

# Microsoft 365 Copilot connectors for people data

Microsoft 365 Copilot connectors for people data (formerly Microsoft Graph connectors) are a type of connector that enhances how individuals are portrayed across Microsoft 365 apps and APIs. They help organizations bring people data from third-party systems into Microsoft 365, ensuring a unified and consistent view of individuals across Copilot, Microsoft Search, [profile cards](/microsoft-365/admin/manage/customize-profile-cards?view=o365-worldwide), and more.

These connectors create a view of a portion of the data from the third-party source system, ensuring the data stays authoritative in its original location while being displayed consistently across Microsoft 365.

You can use Copilot connectors for people data to:

* Unified identity — create a complete and coherent view of individuals by merging people data in Microsoft 365 with other sources where people data is stored, such as Human Capital Management systems.  
* Enhanced Copilot responses — enriched people data improves Copilot’s ability to reason and respond with contextually relevant information for people data-related queries.  
* Improved discoverability — people data becomes searchable across Microsoft 365, including in profile cards, Org Explorer, and semantic search.
* [Profile card integration](/microsoft-365/admin/manage/customize-profile-cards?view=o365-worldwide) — updated profile information in the Microsoft 365 profile cards. 

## Where to find the data?

Once connected, people data from the third-party system can appear in Microsoft 365 experiences, such as:  

* [Microsoft 365 profile cards](/microsoft-365/admin/manage/customize-profile-cards?view=o365-worldwide)
* Microsoft 365 Copilot chat
* Microsoft Search
* Org Explorer 

Admins can configure Microsoft 365 Copilot connectors for people data in the [Microsoft 365 admin center](https://admin.microsoft.com/adminportal/home?#/MicrosoftSearch/Connectors/add).  

When multiple sources provide overlapping data, Microsoft 365 uses a precedence model to determine which source is authoritative. Before you have configured a Copilot connector for people data, Entra ID is the highest priority source for people data. People connectors handle data by prioritizing and managing these sources by configuring Admin settings. Newly configured Copilot [connectors]() for people data are given the highest priority. For more information, see [source precedence](profilepriority-configure-profilepropertysetting.md).

Not all the data ingested from third-party systems appears automatically in Microsoft 365 experiences by default. For example, admins have to select what data is shown in the [profile card](/microsoft-365/admin/manage/customize-profile-cards?view=o365-worldwide).  

## Compliance, privacy, and data usage

### Data visibility

By default, people data provided via a Copilot connector is visible to all users in the tenant. This connector data is stored in the user’s Microsoft 365 profile. Data is retained as long as the user is active and licensed, unless deleted by an admin or the user via a Data Subject Request (DSR). DSRs allow users to [export their profile data](https://support.microsoft.com/office/export-data-from-your-profile-card-d809f83f-c077-4a95-9b6c-4f093305163d?preview=true).  

#### Information barriers 

Microsoft 365 Copilot connectors for people data comply with information barriers (IB) to ensure compliance across various platforms. Microsoft Purview Information Barriers restrict communication and collaboration between specific groups in Teams, SharePoint, and OneDrive. It helps prevent conflicts of interest and protects internal information by ensuring restricted users can't find, chat, or call each other, which is particularly useful in regulated industries. For more information, see [Learn about information barriers](/purview/information-barriers).

### Data usage 

People data imported via Copilot connectors is considered customer content and is used by Microsoft 365 services as mentioned previously. Within your organization, this data is treated as publicly accessible. In cross-tenant collaboration scenarios and Copilot experiences, connector data might also be used to enhance context and productivity. 

## Profile information

### Editing incorrect profile information

To update incorrect information on a profile card, you need to submit a request.  

1. [Export your profile data](https://support.microsoft.com/office/export-data-from-your-profile-card-d809f83f-c077-4a95-9b6c-4f093305163d?preview=true) from your profile card. This export includes the source ID of the information you wish to correct.  
1. Contact your tenant administrator with these details to identify the appropriate connector within the Microsoft Admin Center portal by matching it to the connector ID of the configured connector.  
1. The administrator can update the information directly in the third-party source system. 
1. Once the connector performs its next scheduled crawl, the updated data is reflected on the user's profile card. 

### Deleting profile information

Only tenant admins can delete people's data that originates from a source owned by your employer and is exposed in Microsoft 365 experiences via the user profile. Depending on your employer's policies, you might or might not be able to delete the data. Alternatively, your administrator might update a Copilot people data connector configuration to reflect this. 

For more on DSRs, see Microsoft’s guidance on [GDPR and CCPA compliance](https://myaccount.microsoft.com/settingsandprivacy/privacy).  

### Property-specific considerations

- User editable properties - All properties ingested via the people connectors are read-only. We recommend that you disable user editing of any properties that are also ingested via people connectors to avoid scenarios where user edits aren't displayed on the profile card due to the [precedence model](/graph/profilepriority-configure-profilepropertysetting). To configure editing of properties, use the SharePoint admin center to [disable user editing in user profiles](/sharepoint/manage-user-profiles).
- Skills - Skills is a supported property for ingestion via people connectors as read-only skills and merges with user-editable skills, unless editing of skills is disabled. If the tenant opts in to the People Skills service, only skills that originate from [People Skills](/copilot/microsoft-365/people-skills-overview) are displayed on the profile card. In this scenario, when People Skills is enabled, skills from people connectors are only available in people search and Microsoft 365 Copilot Chat.

## Authentication and authorization

Microsoft is committed to ensuring the highest standards of security by only supporting the most secure authentication protocols, such as OpenID Connect (OIDC) and OAuth 2.0. These protocols are integral to our security strategy, providing robust and reliable authentication mechanisms that safeguard user identities and data. To set up people connectors, OAuth 2.0 authentication is required. 

> [!Note]
> Only Global Admins and Copilot Admins can configure people connectors. 

## Data refresh and accuracy

To maintain accurate and up-to-date profiles, admins should set up regular crawls or syncs to ensure alignment with source systems and prevent data staleness. 

People data is stored as long as the end user is active and has a valid Microsoft 365 license, provided no deletion request was made by the admin. If a connector is deleted, it's removed from all instances, but delays can be expected.

### Data residency

When you upload people data, each end user's data attributes are scoped to their Microsoft 365 user profile and stored in the user's Exchange Online mailbox. For information on data residency for Exchange Online, see [Data residency for Exchange Online - Microsoft 365 Enterprise | Microsoft Learn](/microsoft-365/enterprise/m365-dr-workload-exo?view=o365-worldwide&preserve-view=true).

### Removing a connector

To delete a Copilot connector for people data, an admin should follow these steps: 

1. Go to the Microsoft 365 Admin Center and navigate to the connectors section. 
1. Locate the connector you want to delete. 
1. Use the `delete` operation available for both Microsoft-built and partner-built connectors. 

For more information, see [https://learn.microsoft.com/microsoftsearch/manage-connector](/microsoftsearch/manage-connector).

## Related content

- [Microsoft 365 Copilot connectors gallery | Microsoft Learn](/microsoftsearch/connectors-gallery) 
- [Map non-Entra identities to Microsoft Entra ID](/microsoftsearch/map-non-aad) 
- [Export data from your profile card - Microsoft support](https://support.microsoft.com/office/export-data-from-your-profile-card-d809f83f-c077-4a95-9b6c-4f093305163d) 
- [Source precedence](profilepriority-configure-profilepropertysetting.md)  
- [Organizational data in Microsoft 365 | Microsoft Learn](/viva/organizational-data) 

