---
# Required metadata
# For more information, see https://learn.microsoft.com/en-us/help/platform/learn-editor-add-metadata
# For valid values of ms.service, ms.prod, and ms.topic, see https://learn.microsoft.com/en-us/help/platform/metadata-taxonomies

title: Microsoft 365 Copilot connectors for people data
description: Overview of people connectors
author: hapelthun
ms.author:   shivansingh # Microsoft alias
ms.service: microsoft-365-copilot
ms.topic: article
ms.date:     06/02/2025
ms.subservice: developer
---

# Microsoft 365 Copilot connectors for people data

**Microsoft 365 Copilot connectors for people data** are a class of Copilot connectors, earlier called Microsoft Graph Connectors, designed to enrich the representation of a person across Microsoft 365 (M365) applications and APIs. They allow organisations to ingest people data from third-party (3P) systems into M365, enabling a unified and coherent person representation across Copilot, Microsoft Search, profile cards, and more.  

These connectors provide a replica view of a subset of the data in the 3P source system, ensuring that the data remains authoritative in its original location while being surfaced coherently across M365 experiences.  

#### **Why Use Microsoft 365 Copilot connectors for people data?** 

**Unified Identity**: Create a complete and coherent view of individuals by merging people data in M365 with other sources where people data is stored, such as Human Capital Management systems.  

**Enhanced Copilot Responses**: Enriched people data improves Copilot’s ability to reason and respond with contextually relevant information for people data related queries.  

**Improved Discoverability**: Customer’s people data becomes searchable across M365, including in profile cards, Org Explorer, and semantic search.  

- **Profile Card Integration**: Updated profile information in the M365 profile cards, with links directly to the 3P content source. 

#### **Where the data appears** 

Once connected, people data from the 3P system can appear in M365 experiences, such as:  

**M365 Profile Cards** (LPC) 

**M365 Copilot chat** 

**Microsoft Search** 

**Org Explorer** 

Admins can configure which properties are shown and how they map to Microsoft 365 schema in [MAC](https://admin-ignite.microsoft.com/Adminportal/Home?#/copilot/connectors/add).  

When multiple sources provide overlapping data, Microsoft 365 uses a precedence model to determine which source is authoritative. Before you have configured a Copilot connector for people data, Entra ID is the highest priority source for people data. People connectors handle data by prioritizing and managing these sources by configuring Admin settings. Newly configured Copilot connectors for people data are given the highest priority. Read more about **source precedence** [here]([https://learn.microsoft.com/en-us/graph/profilepriority-configure-profilepropertysetting).

Please note that not all the data ingested from 3P systems will appear automatically in M365 experiences by default. For example, the admin has to select what data will be shown in the [profile card](https://learn.microsoft.com/en-us/graph/add-properties-profilecard).  


#### **Compliance, Privacy and how data is use, edited and retained** 

**Data Visibility**  

By default, people data provided via a Copilot connector is visible to all users in the tenant. This connector data is stored in the user’s Microsoft 365 profile. Data is retained as long as the user is active and licensed, unless deleted by an admin or the user via a Data Subject Request (DSR). DSRs allow users to [export their profile data](https://support.microsoft.com/en-us/office/export-data-from-your-profile-card-d809f83f-c077-4a95-9b6c-4f093305163d?preview=true).  

**Data Usage** 

People data imported via Copilot connectors is considered customer content and is used by Microsoft 365 services as mentioned above. Within your organization, this data is treated as publicly accessible. In cross-tenant collaboration scenarios and Copilot experiences, connector data may also be used to enhance context and productivity. 

**Edit incorrect Profile Information:** 

If users notice incorrect information on their Profile card, they can follow these steps to request an update: 

1. [Export your profile data](https://support.microsoft.com/en-us/office/export-data-from-your-profile-card-d809f83f-c077-4a95-9b6c-4f093305163d?preview=true) from your Profile card. This export will include the Source ID of the information you wish to correct.  

1. Contact Your Tenant Administrator with these details so they can identify the appropriate connector within Microsoft Admin Center portal by matching it to the Connector ID of the connector they have configured.  

1. The administrator can then update the information directly in the 3P source system. 

1. Once the connector performs its next scheduled crawl, the updated data will be reflected on the user's Profile card. 

 

**Delete Profile Information** 

Only tenant admins can delete people data that originates from a source owned by your employer and is exposed in Microsoft 365 experiences via the user profile. Depending on your employer's policies you may or may not be able to delete the data. Alternatively, your administrator may update a Copilot people data connector configuration to reflect this. 

For more on DSRs, see Microsoft’s guidance on [GDPR and CCPA compliance](https://learn.microsoft.com/en-us/compliance/regulatory/gdpr-data-subject-requests).  

**Authentication & Authorization**  

Microsoft is committed to ensuring the highest standards of security by only supporting the most secure authentication protocols, such as OpenID Connect (OIDC) and OAuth 2.0. These protocols are integral to our security strategy, providing robust and reliable authentication mechanisms that safeguard user identities and data. To set up People Connectors OAuth 2.0 authentication is required. 

**Admin Roles**  

Initially, only Global Admins, Copilot Admin and People Admin can configure People Connectors. 

**Data Refresh and Accuracy** 

To maintain accurate and up-to-date profiles, admins should set up regular crawls/syncs to ensure alignment with source systems and prevent data staleness. 

**Data retention** 

People data is stored as long as the end user is active and has a valid Microsoft 365 license, provided no deletion request has been made by the admin. If a connector is deleted it will approximately take 24h before its removed from all instances. 

**Data residency** 

When you upload people data, each end user's data attributes are scoped to their Microsoft 365 User Profile and stored in the user's Exchange Online mailbox. For information on data residency for Exchange Online, see [Data Residency for Exchange Online - Microsoft 365 Enterprise | Microsoft Learn.](/microsoft-365/enterprise/m365-dr-workload-exo?view=o365-worldwide&preserve-view=true)  

**Remove a connector** 

To delete a Copilot connector for people data, an admin should follow these steps: 

1. Go to the Microsoft 365 Admin Center and navigate to the Connectors section. 

1. Locate the connector you want to delete. 

1. Use the Delete operation available for both Microsoft-built and partner-built connectors. 

More info here: [https://learn.microsoft.com/en-us/microsoftsearch/manage-connector](https://learn.microsoft.com/en-us/microsoftsearch/manage-connector) 

#### **Resources and Documentation Links** 

- [Microsoft 365 Copilot connectors gallery | Microsoft Learn](/microsoftsearch/connectors-gallery) 

- [Map non-Entra identities to Microsoft Entra ID](/microsoftsearch/map-non-aad) 

- [Export data from your profile card - Microsoft Support](https://support.microsoft.com/en-us/office/export-data-from-your-profile-card-d809f83f-c077-4a95-9b6c-4f093305163d) 

- [Source precedence](https://learn.microsoft.com/en-us/graph/profilepriority-configure-profilepropertysetting)  

- [Organizational Data in Microsoft 365 | Microsoft Learn](/viva/organizational-data) 

