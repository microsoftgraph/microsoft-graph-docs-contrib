---
title: "Migrate Azure Active Directory (Azure AD) Graph to Microsoft Graph"
description: "Learn how to migrate Azure Active Directory (Azure AD) Graph apps to Microsoft Graph before Azure AD Graph is retired."
author: "dkershaw10"
ms.localizationpriority: medium
ms.prod: "applications"
---

# Migrate Azure AD Graph apps to Microsoft Graph

> [!IMPORTANT]
> Azure Active Directory (Azure AD) Graph is deprecated but won't be retired on June 30, 2022 as [previously announced](https://techcommunity.microsoft.com/t5/azure-active-directory-identity/update-your-applications-to-use-microsoft-authentication-library/ba-p/1257363). Listening closely to your feedback about the challenges of migrating such a critical dependency, we're delaying the retirement date through at least the end of this year, 2022. We’ll provide a retirement update mid-calendar year including releasing more tools to help you to migrate your apps.

## Why use Microsoft Graph?

Microsoft Graph represents our best-in-breed API surface. It offers a single unified endpoint to access Azure AD services and Microsoft 365 services such as Microsoft Teams and Microsoft Intune. Microsoft Graph API's usage has more than doubled that of Azure AD Graph, and in the past two years we have added [167 new features](https://developer.microsoft.com/en-us/graph/changelog). All new functionalities will only be available through the Microsoft Graph.

Microsoft Graph is also more secure and resilient than Azure AD Graph.

Microsoft Graph has all the capabilities that have been available in Azure AD Graph and new APIs like identity protection and authentication methods. Its client libraries offer built-in support for features like retry handling, secure redirects, transparent authentication, and payload compression.

Switch to Microsoft Graph to take advantage of these enhanced capabilities and:

- [Microsoft 365 group management](/graph/office365-groups-concept-overview).
- [External user invitations](/graph/api/resources/invitation).
- The ability to [restore users, Microsoft 365 groups, applications, and service principals](/graph/api/resources/directory) after they've been deleted.
- [Webhook notifications on users and groups](/graph/webhooks).
- Advanced license management features including [group-based licensing](/graph/api/group-assignlicense).
- Identity governance features such as:
  - [Privileged identity management](/graph/api/resources/privilegedidentitymanagement-root) (PIM) to elevate users to privileged roles only when needed and for a limited time period.
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

Send any other questions, open issues, and feature requests through Microsoft Q&A by using the tag [azure-ad-graph-deprecation](/answers/topics/azure-ad-graph-deprecation.html).

## Next steps

- Walk through the [app migration checklist](migrate-azure-ad-graph-planning-checklist.md) to help you plan the migration.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
- Learn more about progress updates and timelines in [Microsoft Graph or the Azure AD Graph](https://developer.microsoft.com/graph/blogs/microsoft-graph-or-azure-ad-graph/).
- Get [answers to questions](/graph/migrate-azure-ad-graph-faq) you might have about the migration.