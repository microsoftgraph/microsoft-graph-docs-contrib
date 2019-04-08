---
title: "Migrate Azure AD Graph apps to Microsoft Graph  | Microsoft Graph"
description: "Describes how to migrate Azure Active Directory (Azure AD) API apps to Microsoft Graph API."
author: "lleonard-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Migrate Azure AD Graph apps to Microsoft Graph

Microsoft Graph replaces Azure Active Directory (Azure AD) Graph and early versions of Azure AD Graph are decommissioned.

In addition, new features and capabilities have been introduced into Microsoft Graph to support more services and capabilities, including:

- Office 365 group management.
- The ability to restore users and Office 365 groups after they've been deleted.
- Improved governance and compliance features:
    - Privileged identity management (PIM).
    - Access reviews.
    - Terms-of-use control/access.
    - External user invitations.
- Webhook notifications on users and groups.

Microsoft Graph features more services than Azure Active Directory; it also includes Microsoft 365.

As a result, applications that currently use Azure AD Graph APIs should be migrated to use Microsoft Graph.

These articles help you do so.  

Here, you'll find: 

- A checklist to help you plan.
- Guidance describing specific differences between the APIs.
- Links to additional resources and examples to illustrate specific differences.

To learn more, including progress updates and timelines, see [Microsoft Graph or the Azure AD Graph](https://dev.office.com/blogs/microsoft-graph-or-azure-ad-graph) in the Office Dev Center.

## Migration planning  checklist

Use the following checklist to plan your migration:

1.  Research the differences between the APIs

    In many respects, the Microsoft Graph API is similar to the earlier Azure AD Graph API; however, there are differences.  Certain resources, properties, methods, and permissions have changed. 

    You can, for example, simply change the endpoint service name and version in your code for many calls.

    Make an inventory of the endpoints called by your app, the permissions they require, and any changes.  

    Specifically, look for differences between:

    - [Request calls](migrate-azure-ad-graph-request-differences.md) between the two services.
    - [Entity resource names](migrate-azure-ad-graph-resource-differences.md) and their types.
    - [Properties](migrate-azure-ad-graph-property-differences.md) of request and response objects.
    - [Methods](migrate-azure-ad-graph-method-differences.md), including parameters and types.
    - [Feature differences](migrate-azure-ad-graph-feature-differences.md), such as directory extensions, batching, differential queries, and so on.

    Verify that the APIs you need are generally available as Microsoft Graph 1.0 APIs. 

    Verify that available APIs work the same way.

    In some cases, new capabilities and features are designed to replace earlier approaches.

    Use the [Graph Explorer](https://aka.ms/ge) to experiment with new calls and to develop new approaches. For best results, sign in using the credentials of your app so that you see what it sees.

1.  Review app details, such as:

    - [App registration](migrate-azure-ad-graph-app-registration.md) and consent changes (which should be minimal to none).
    - Token acquisition and [authentication libraries](migrate-azure-ad-graph-authentication-library.md).
    - For .NET applications, use of [client libraries](migrate-azure-ad-graph-client-libraries.md).

1.  Deploy, test, and [extend your app](migrate-azure-ad-graph-deploy-test-extend.md).

    If you're currently using the [Azure AD v1.0 library](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-authentication-libraries) (ADAL), consider switching to the Azure AD v2 endpoint and the [Microsoft Azure AD v2.0 library](https://docs.microsoft.com/en-us/azure/active-directory/develop/reference-v2-libraries) (MSAL).


## Next Steps

- Learn how to [audit API differences](migrate-azure-ad-graph-audit-api-use.md) between Azure AD Graph and Microsoft graph.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
