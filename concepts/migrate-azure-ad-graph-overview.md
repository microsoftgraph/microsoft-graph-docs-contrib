---
title: "Migrate Azure AD Graph apps to Microsoft Graph"
description: "Describes how to migrate Azure Active Directory (Azure AD) API apps to Microsoft Graph API."
author: "dkershaw10"
ms.localizationpriority: medium
ms.prod: "applications"
---

# Migrate Azure AD Graph apps to Microsoft Graph

> [!WARNING]
> **Azure Active Directory (Azure AD) Graph is deprecated**. To avoid loss of functionality, migrate your applications to Microsoft Graph before June 30, 2022 when Azure AD Graph API endpoints will stop responding to requests.
>
> Microsoft will continue technical support and apply security fixes for Azure AD Graph until June 30, 2022 when all functionality and support will end. If you fail to migrate your applications to Microsoft Graph before June 30, 2022, you put their functionality and stability at risk.

[Azure AD Graph is deprecated](https://techcommunity.microsoft.com/t5/azure-active-directory-identity/update-your-applications-to-use-microsoft-authentication-library/ba-p/1257363). Update your Azure AD Graph apps to use Microsoft Graph now.

## Why use Microsoft Graph?

Azure AD Graph offers access to only Azure AD services. Microsoft Graph offers a single unified endpoint to access Azure AD services and other Microsoft 365 services such as Microsoft Teams, Microsoft Exchange, and Microsoft Intune. For most production apps, Microsoft Graph fully supports Azure AD scenarios.

Microsoft Graph is also more secure and resilient than Azure AD Graph.

In addition, Microsoft Graph supports many new Azure AD datasets and features that aren't available in Azure AD Graph, including in Windows 10 and Enterprise Mobility + Security (EMS). Switch to Microsoft Graph to take advantage of these new APIs, all through one single endpoint, including:

- [Microsoft 365 group management](/graph/office365-groups-concept-overview).
- [External user invitations](/graph/api/resources/invitation).
- The ability to [restore users, Microsoft 365 groups, applications, and service principals](/graph/api/resources/directory) after they've been deleted.
- [Webhook notifications on users and groups](/graph/webhooks).
- Advanced license management features including [group-based licensing](/graph/api/group-assignlicense).
- Identity governance features such as:
  - [Privileged identity management](/graph/api/resources/privilegedidentitymanagement-root?view=graph-rest-beta&preserve-view=true) (PIM) to elevate users to privileged roles only when needed and for a limited time period.
  - [Access reviews](/graph/api/resources/accessreviewsv2-overview) for one-time or recurring access reviews for attestation of user's access rights.
  - [Terms-of-use](/graph/api/resources/agreement) to enable organizations to present information for legal or compliance requirements, like disclaimer notices.
- Security features such as:
  - [Identity risk events](/graph/api/resources/riskdetection).
  - [Risky users](/graph/api/resources/riskyuser).
- [Client libraries and samples](/graph/) available on many more platforms and languages. Microsoft Graph SDKs provide a discoverable interface to easily access your data while transparently handling token acquisition, retry handling due to errors and throttling, secure redirect handling and model serialization and deserialization.
- More [OData query capabilities](/graph/query-parameters) supported by resources such as users, groups, applications, and service principals.

The rest of the articles in this section help you migrate your app from Azure AD Graph to Microsoft Graph. You'll find:

- A checklist to help you plan the migration.
- Guidance describing specific differences between the APIs.
- Links to more resources and examples to illustrate specific differences.
- An FAQ to address other questions or concerns.

## Next Steps

- Walk through the [app migration checklist](migrate-azure-ad-graph-planning-checklist.md) to help you plan the migration.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
- To learn more about progress updates and timelines, see [Microsoft Graph or the Azure AD Graph](https://developer.microsoft.com/graph/blogs/microsoft-graph-or-azure-ad-graph/).
- Get [answers to questions](/graph/migrate-azure-ad-graph-faq) you may have about the migration.