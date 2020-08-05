---
title: "Migrate Azure AD Graph apps to Microsoft Graph"
description: "Describes how to migrate Azure Active Directory (Azure AD) API apps to Microsoft Graph API."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Migrate Azure AD Graph apps to Microsoft Graph

Microsoft Graph is fully replacing Azure Active Directory (Azure AD) Graph. For most production apps, Microsoft Graph can already fully support Azure AD scenarios. You should start moving your Azure AD Graph apps to Microsoft Graph now.

In addition, Microsoft Graph supports many new Azure AD datasets and features that are not available in Azure AD Graph. Switch to Microsoft Graph to take advantage of these new APIs, all through one single endpoint, including:

- [Microsoft 365 group management](/graph/office365-groups-concept-overview)
- [External user invitations](/graph/api/resources/invitation?view=graph-rest-1.0)
- The ability to [restore users and Microsoft 365 groups](/graph/api/resources/directory?view=graph-rest-1.0) after they've been deleted
- [Webhook notifications on users and groups](/graph/webhooks?toc=./ref/toc.json&view=graph-rest-1.0)
- Identity governance features such as:
  - [Privileged identity management](/graph/api/resources/privilegedidentitymanagement-root?view=graph-rest-beta) (PIM) to elevate users to privileged roles only when needed and for a limited time period
  - [Access reviews](/graph/api/resources/accessreviews-root?view=graph-rest-beta) for one-time or recurring access reviews for attestation of user's access rights
  - [Terms-of-use](/graph/api/resources/accessreviews-root?view=graph-rest-beta) to enable organizations to present information for legal or compliance requirements, like disclaimer notices
- Security features such as:
  - [Identity risk events](/graph/api/resources/identityriskevent?view=graph-rest-beta)
  - [Risky users](/graph/api/resources/riskyuser?view=graph-rest-beta)
- [Client libraries and samples](/graph/) available on many more platforms and languages. The Microsoft Graph SDKs provide a discoverable interface to easily access your data while transparently handling token acquisition, retry handling due to errors and throttling, secure redirect handling and model serialization and deserialization.

Microsoft Graph offers access to many more services than just Azure Active Directory. It's the [API gateway to Microsoft 365 services too](/graph/).

The rest of the articles in this section help you move your app from Azure AD Graph to Microsoft Graph. You'll find:

- A checklist to help you plan.
- Guidance describing specific differences between the APIs.
- Links to additional resources and examples to illustrate specific differences.
- An FAQ to address other questions or concerns

## Next Steps

- Walk through the [app migration checklist](migrate-azure-ad-graph-planning-checklist.md) to help you plan the move.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
- To learn more about progress updates and timelines, see [Microsoft Graph or the Azure AD Graph](https://developer.microsoft.com/graph/blogs/microsoft-graph-or-azure-ad-graph/).


## Frequently asked questions (FAQ)

__Q: Is Azure AD Graph (AAD Graph) being deprecated?__  
A: Yes. Starting June 30th, 2020, we will no longer add new features to AAD Graph. We'll continue adding critical security fixes through June 30th, 2022.  The APIs will may no longer function correctly after June 30th, 2022.

__Q: How do I know which of my apps are using AAD Graph?__  
A: Applications must be registered to use AAD Graph.  You can look your App Registration page on your Azure Tenant Portal and see if a given application is registered to use AAD Graph.

__Q:  How do I know which APIs my applications are calling?__
If you have the source code for the application, you can reference the above migration guides to help determine which APIs the app uses and how to migrate it to Microsoft Graph. If you do not have access to your application's source code, you can [open a support request](developer-support-help-options.md#open-a-support-request) to obtain a list of the APIs each application is calling.

__Q: Will my existing AAD Graph apps continue to work?__  
A: Your existing apps will continue to work without modification until June 30th, 2022.  AAD Graph API function and behavior after that time is not guaranteed.

__Q: Why should I invest in moving to Microsoft Graph?__  
A: Microsoft Graph is the gateway to data and intelligence in Microsoft 365. It provides a unified programmability model that you can use to access the tremendous amount of datasets and features in Microsoft 365, Azure, Windows 10, and Enterprise Mobility + Security. You can use the wealth of data in Microsoft Graph to build and manage apps for organizations of any scale.

__Q: Will you release a tool that helps me move my apps from AAD Graph to Microsoft Graph?__  
A:  While we do not have any tools to announce at this time, we are always working on improving our developers' platform experience.  This includes providing tooling and data to facilitate keeping your applications current with API changes.

__Q: How do I get help migrating my application?__  
A: See the [Migration guidance](## Next Steps) section of this article. If after reading you have additional questions, you can post on Stack Overflow with the tag `[aadgraph-deprecation]` or open an issue in the API's [GitHub repository](https://github.com/microsoftgraph).
