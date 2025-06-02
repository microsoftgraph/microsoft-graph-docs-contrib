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

Microsoft 365 Copilot connectors for people data are a type of connector (formerly Microsoft Graph connectors) that enhance how individuals are portrayed across Microsoft 365 apps and APIs. They help organizations bring people data from third-party systems into Microsoft 365, ensuring a unified and consistent view of individuals across Copilot, Microsoft Search, profile cards, and more.

These connectors create a view of a portion of the data from the third-party source system, ensuring the data stays authoritative in its original location while being displayed consistently across Microsoft 365.

## Using Microsoft 365 Copilot connectors for people data

* Unified identity: Create a complete and coherent view of individuals by merging people data in M365 with other sources where people data is stored, such as Human Capital Management systems.  

* Enhanced copilot responses: Enriched people data improves Copilot’s ability to reason and respond with contextually relevant information for people data-related queries.  

* Improved discoverability: Customer’s people data becomes searchable across Microsoft 365, including in profile cards, Org Explorer, and semantic search.

* Profile card integration: Updated profile information in the Microsoft 365 profile cards, with links directly to the 3P content source. 

## Where to find the data?

Once connected, people's data from the 3P system can appear in M365 experiences, such as:  

* Microsoft 365pProfile cards

* Microsoft 365 Copilot chat

* Microsoft Search

 *Org Explorer 

Admins can configure which properties are shown and how they map to Microsoft 365 schema in [MAC](https://admin-ignite.microsoft.com/Adminportal/Home?#/copilot/connectors/add).  

When multiple sources provide overlapping data, Microsoft 365 uses a precedence model to determine which source is authoritative. Before you have configured a Copilot connector for people data, Entra ID is the highest priority source for people data. People connectors handle data by prioritizing and managing these sources by configuring Admin settings. Newly configured Copilot connectors for people data are given the highest priority. For more information, see [source precedence]([https://learn.microsoft.com/en-us/graph/profilepriority-configure-profilepropertysetting).

note that not all the data ingested from 3P systems appears automatically in Microsoft 365 experiences by default. For example, the admin has to select what data is shown in the [profile card](https://learn.microsoft.com/en-us/graph/add-properties-profilecard).  


## Compliance, privacy, and how data is used, edited, and retained

### Data visibility

By default, people data provided via a Copilot connector is visible to all users in the tenant. This connector data is stored in the user’s Microsoft 365 profile. Data is retained as long as the user is active and licensed, unless deleted by an admin or the user via a Data Subject Request (DSR). DSRs allow users to [export their profile data](https://support.microsoft.com/en-us/office/export-data-from-your-profile-card-d809f83f-c077-4a95-9b6c-4f093305163d?preview=true).  

### Data usage 

People data imported via Copilot connectors is considered customer content and is used by Microsoft 365 services as mentioned above. Within your organization, this data is treated as publicly accessible. In cross-tenant collaboration scenarios and Copilot experiences, connector data may also be used to enhance context and productivity. 

### Editing incorrect profile information

If users notice incorrect information on their Profile card, they can follow these steps to request an update: 

1. [Export your profile data](https://support.microsoft.com/en-us/office/export-data-from-your-profile-card-d809f83f-c077-4a95-9b6c-4f093305163d?preview=true) from your profile card. This export includes the Source ID of the information you wish to correct.  

1. Contact your tenant administrator with these details so they can identify the appropriate connector within the Microsoft Admin Center portal by matching it to the Connector ID of the connector they have configured.  

1. The administrator can then update the information directly in the 3P source system. 

1. Once the connector performs its next scheduled crawl, the updated data will be reflected on the user's profile card. 

 
### Deleting profile information

Only tenant admins can delete people's data that originates from a source owned by your employer and is exposed in Microsoft 365 experiences via the user profile. Depending on your employer's policies, you may or may not be able to delete the data. Alternatively, your administrator may update a Copilot people data connector configuration to reflect this. 

For more on DSRs, see Microsoft’s guidance on [GDPR and CCPA compliance](https://learn.microsoft.com/en-us/compliance/regulatory/gdpr-data-subject-requests).  

### Authentication & authorization

Microsoft is committed to ensuring the highest standards of security by only supporting the most secure authentication protocols, such as OpenID Connect (OIDC) and OAuth 2.0. These protocols are integral to our security strategy, providing robust and reliable authentication mechanisms that safeguard user identities and data. To set up People Connectors, OAuth 2.0 authentication is required. 

## Admin roles 

Initially, only Global Admins, Copilot Admins, and People Admins can configure people connectors. 

### Data refresh and accuracy

To maintain accurate and up-to-date profiles, admins should set up regular crawls or syncs to ensure alignment with source systems and prevent data staleness. 

### Data retention

People data is stored as long as the end user is active and has a valid Microsoft 365 license, provided no deletion request has been made by the admin. If a connector is deleted, it takes 24h before it's removed from all instances. 

### Data residency

When you upload people data, each end user's data attributes are scoped to their Microsoft 365 User Profile and stored in the user's Exchange Online mailbox. For information on data residency for Exchange Online, see [Data Residency for Exchange Online - Microsoft 365 Enterprise | Microsoft Learn](/microsoft-365/enterprise/m365-dr-workload-exo?view=o365-worldwide&preserve-view=true).

## Removing a connector

To delete a Copilot connector for people data, an admin should follow these steps: 

1. Go to the Microsoft 365 Admin Center and navigate to the Connectors section. 

1. Locate the connector you want to delete. 

1. Use the Delete operation available for both Microsoft-built and partner-built connectors. 

For more information, see [https://learn.microsoft.com/en-us/microsoftsearch/manage-connector](https://learn.microsoft.com/en-us/microsoftsearch/manage-connector).

#### Related content

- [Microsoft 365 Copilot connectors gallery | Microsoft Learn](/microsoftsearch/connectors-gallery) 

- [Map non-Entra identities to Microsoft Entra ID](/microsoftsearch/map-non-aad) 

- [Export data from your profile card - Microsoft support](https://support.microsoft.com/en-us/office/export-data-from-your-profile-card-d809f83f-c077-4a95-9b6c-4f093305163d) 

- [Source precedence](https://learn.microsoft.com/en-us/graph/profilepriority-configure-profilepropertysetting)  

- [Organizational Data in Microsoft 365 | Microsoft Learn](/viva/organizational-data) 

