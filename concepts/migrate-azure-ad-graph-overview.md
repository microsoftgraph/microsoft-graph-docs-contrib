---
title: "Migrate Azure AD Graph apps to Microsoft Graph  | Microsoft Graph"
description: "Describes how to migrate Azure Active Directory (Azure AD) API apps to Microsoft Graph API."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Migrate Azure AD Graph apps to Microsoft Graph

Over time, Microsoft Graph will fully replace Azure Active Directory (Azure AD) Graph. For many production apps, Microsoft Graph can already fully support their Azure AD scenarios. We strongly encourage developers to start moving their Azure AD Graph apps to Microsoft Graph now.

In addition, many new Azure AD datasets and features have been introduced into Microsoft Graph that are not available in Azure AD Graph, including:

- Office 365 group management
- External user invitations
- Webhook notifications on users and groups
- The ability to restore users and Office 365 groups after they've been deleted
- Governance features such as:
  - Privileged identity management (PIM) to elevate users in to privileged roles only when needed for limited time period
  - Access reviews for one-time or recurring access reviews for attestation of user's access rights
  - Terms-of-use to provide a simple method that organizations can use to present information like disclaimers for legal or compliance requirements
- Security features such as:
  - Identity risk events
  - Risky users
- Client libraries available on many more platforms and languages

Microsoft Graph offers access to many more services than just Azure Active Directory. It's the gateway to Microsoft 365 services too.

These articles help you to move your app from Azure AD Graph to Microsoft Graph.  

Here, you'll find:

- A checklist to help you plan.
- Guidance describing specific differences between the APIs.
- Links to additional resources and examples to illustrate specific differences.

To learn more, including progress updates and timelines, see [Microsoft Graph or the Azure AD Graph](https://dev.office.com/blogs/microsoft-graph-or-azure-ad-graph) in the Office Dev Center.

## Migration planning checklist

Use the following checklist to plan your migration:

1. Research the differences between the APIs

    In many respects, Microsoft Graph is similar to the earlier Azure AD Graph; however, there are differences.  Certain resources, properties, methods, and core capabilities have changed.

    You can, in many cases, simply change the endpoint service name and version in your code, and everything should continue to work.

    Make an inventory of the endpoints called by your app, the permissions they require, and any changes.  

    Specifically, look for differences between:

    - [Request call syntax](migrate-azure-ad-graph-request-differences.md) between the two services.
    - [Entity resource names](migrate-azure-ad-graph-resource-differences.md) and their types.
    - [Properties](migrate-azure-ad-graph-property-differences.md) of request and response objects.
    - [Methods](migrate-azure-ad-graph-method-differences.md), including parameters and types.
    - [Feature differences](migrate-azure-ad-graph-feature-differences.md), such as directory extensions, batching, differential queries, and so on.

    Verify that the APIs your app needs are generally available in Microsoft Graph v1.0 and that these APIs work the same way.

    In some cases, new capabilities and features are designed to replace earlier approaches.

    Use the [Graph Explorer](https://aka.ms/ge) to experiment with new calls and to develop new approaches. For best results, sign in using the credentials of a test user in a test tenant so that you see what the API does over important data sets.

2. Review app details, such as:

    - [App registration](migrate-azure-ad-graph-app-registration.md) and consent changes (which should be none).
    - Token acquisition and [authentication libraries](migrate-azure-ad-graph-authentication-library.md).
    - For .NET applications, use of [client libraries](migrate-azure-ad-graph-client-libraries.md).

3. Deploy, test, and [extend your app](migrate-azure-ad-graph-deploy-test-extend.md).

    Before updating your app for everyone, ensure you test thoroughly and stage your rollout to your customer audience.

    Now you've made the switch to Microsoft Graph, it's never been easier for you to unlock many more datasets and features that are now at your fingertips. You can get a taste of what's possible by looking at some [examples](/graph/examples).

    If you're currently using the [AD authentication library](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-authentication-libraries) (ADAL), consider switching to the [Microsoft authentication library](https://docs.microsoft.com/en-us/azure/active-directory/develop/reference-v2-libraries) (MSAL).

## Next Steps

- Learn how to [audit API differences](migrate-azure-ad-graph-audit-api-use.md) between Azure AD Graph and Microsoft graph.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
