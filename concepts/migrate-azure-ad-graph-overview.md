---
title: "Migrate from Azure Active Directory (Azure AD) Graph to Microsoft Graph"
description: "Learn how to migrate your apps from Azure Active Directory (Azure AD) Graph to Microsoft Graph before Azure AD Graph is retired."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: krbash
ms.topic: concept-article
ms.localizationpriority: medium
ms.subservice: entra-applications
ms.date: 09/29/2025
#customer intent: As a developer currently using Azure AD Graph, I want to know why I should migrate my applications to Microsoft Graph.
---

# Migrate your apps from Azure AD Graph to Microsoft Graph

> [!CAUTION]
> Azure Active Directory (Azure AD) Graph is deprecated and is currently in its retirement path. Migrate your apps to Microsoft Graph.

Azure Active Directory (Azure AD) Graph is deprecated and is currently in its retirement path. Going forward, we make no further investment in Azure AD Graph. Azure AD Graph APIs have no SLA or maintenance commitment beyond security-related fixes. Investments in new features and functionalities go only to Microsoft Graph. **Migrate your apps to Microsoft Graph.**

Key timelines in the retirement of Azure AD Graph are as follows:
- 2019: Initial announcement of the deprecation of Azure AD Graph. Retirement set for June 30, 2023.
- June 30, 2023: End of the three-year notice period for deprecation of Azure AD Graph. Azure AD Graph enters its retirement cycle.
- August 31, 2024: New applications created after this date can't use Azure AD Graph [unless they explicitly opt in for extended access](applications-authenticationbehaviors.md#allow-extended-azure-ad-graph-access-until-june-30-2025). Existing applications continue to work.
- February 1, 2025: **All new and existing apps must** [explicitly opt in for extended access](applications-authenticationbehaviors.md#allow-extended-azure-ad-graph-access-until-august-31-2025) to use Azure AD Graph, *including* apps created before August 31, 2024.
- August 31, 2025: End of extended access to Azure AD Graph. Azure AD Graph will be fully retired.

For more information on the latest announcement, see [Important: Update on Azure AD Graph API retirement](https://techcommunity.microsoft.com/blog/microsoft-entra-blog/important-update-azure-ad-graph-retirement/4364990).

## Why use Microsoft Graph?

Microsoft Graph represents our best-in-breed API surface. It offers a single unified endpoint to access Microsoft Entra services and Microsoft 365 services such as Microsoft Teams and Microsoft Intune. Microsoft Graph's API surface [has more than doubled that of Azure AD Graph](https://developer.microsoft.microsoft.com/en-us/graph/changelog). All new functionalities are only available through Microsoft Graph.

Microsoft Graph is also more secure and resilient than Azure AD Graph.

Microsoft Graph has all the capabilities that were available in Azure AD Graph and includes new APIs like identity protection, privileged identity management, lifecycle workflows, and multitenant permissions management. Its client libraries offer built-in support for features like retry handling, secure redirects, transparent authentication, and payload compression.

Switch to Microsoft Graph to take advantage of these enhanced capabilities and:

- [Microsoft 365 group management](/graph/microsoft365-groups-concept-overview).
- [External user invitations](/graph/api/resources/invitation).
- The ability to [restore users, groups, applications, and service principals](/graph/api/resources/directory) after they're deleted.
- [Webhook notifications on users and groups](/graph/change-notifications-overview).
- Advanced license management features including [group-based licensing](/graph/api/group-assignlicense).
- Identity governance features such as:
  - [Privileged identity management](/graph/api/resources/privilegedidentitymanagementv3-overview) (PIM) to elevate users to privileged roles only when needed and for a limited time period.
  - [Access reviews](/graph/api/resources/accessreviewsv2-overview) for one-time or recurring access reviews for attestation of user's access rights.
  - [Terms-of-use](/graph/api/resources/agreement) to enable organizations to present information for legal or compliance requirements, like disclaimer notices.
- Security features such as:
  - [Identity risk events](/graph/api/resources/riskdetection).
  - [Risky users](/graph/api/resources/riskyuser).
- [Multicloud permissions and entitlements management capabilities](/graph/api/resources/permissions-management-api-overview).
- [Client libraries and samples](/graph/) available on many more platforms and languages. Microsoft Graph SDKs provide a discoverable interface to easily access your data while transparently handling token acquisition, retry handling due to errors and throttling, secure redirect handling and model serialization and deserialization.
- More [OData query capabilities](/graph/query-parameters) supported by resources such as users, groups, applications, and service principals.

The rest of the articles in this section help you migrate your app from Azure AD Graph to Microsoft Graph. They include:

- A checklist to help you plan the migration.
- Guidance describing specific differences between the APIs.
- Links to more resources and examples to illustrate specific differences.
- An FAQ to address other questions or concerns.

Send any other questions, open issues, and feature requests through Microsoft Q&A by using the tag [azure-ad-graph-deprecation](/answers/topics/azure-ad-graph-deprecation.html).

To get started:

- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
- Get [answers to questions](/graph/migrate-azure-ad-graph-faq) you might have about the migration.

## Next step

> [!div class="nextstepaction"]
> [Review the app migration checklist to help you plan the migration](migrate-azure-ad-graph-planning-checklist.md)
