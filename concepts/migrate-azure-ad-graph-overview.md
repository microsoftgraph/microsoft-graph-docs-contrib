---
title: "Migrate Azure AD Graph apps to Microsoft Graph  | Microsoft Graph"
description: "Describes how to migrate Azure Active Directory (Azure AD) API apps to Microsoft Graph API."
author: "lleonard-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Migrate Azure AD Graph apps to Microsoft Graph

Microsoft Graph replaces Azure Active AD Graph and early versions of Azure AD Graph are decommissioned.

In addition, new features and capabilities have been introduced into Microsoft Graph to support more services and capabilities, including:

- Office 365 group management
- The ability to restore users and Office 365 groups after they've been deleted
- Improved governance and compliance features:
    - Privileged identity management (PIM), 
    - Access reviews, 
    - Terms-of-use control/access
    - External user invitations
- Webhook notifications on users and groups.

Microsoft Graph features more than Azure ACtive Directory, it also includes Microsoft 365.

As a result, applications that currently use Azure AD Graph APIs should be migrated to use Microsoft Graph.

These articles help you you do so.  

Here, you'll find: 

- A checklist to help you plan
- Guidance comparing specific differences between the APIs
- Examples to illustrate specific differences

To learn more, including progress updates and timelines, see [Microsoft Graph or the Azure AD Graph](https://dev.office.com/blogs/microsoft-graph-or-azure-ad-graph) in the Office Dev Center.

## Migration planning  checklist

Use the following checklist to plan your migration:

1.  **Research the differences between the APIs**

    In many respects, the Microsoft Graph API is similar to the earlier Azure AD Graph API; however, there are differences.  Certain resources, properties, methods, and permissions have changed. 

    You can, for example, simply change the endpoint service name and version in your code for many calls.

    Make an inventory of the endpoints called by your app, the permissions they require, and any changes.  

    Specifically, look for differences between:

    - Request calls between the two services.
    - Entity resource names and their types.
    - Properties of request and response objects.
    - Methods, including parameters and types.
    - Features, such as directory extensions, batching, differential queries, and so on.

    Verify that the APIs you need are generally available as Microsoft Graph 1.0 APIs. 

    Verify that available APIs work the same way.

    In some cases, new capabilities and features are designed to replace earlier approaches.

    Use the [Graph Explorer](https://aka.ms/ge) to experiment with new calls and to develop new approaches. For best results, sign in using the credentials of your app so that you see what it sees.

1.  Review app details, such as:

    - App registration and consent changes (which should be minimal to none).
    - Token acquisition and authentication libraries.
    - For .NET applications, use of client libraries.

1.  Deploy, test, and extend your app.

    If you're currently using the [Azure AD v1.0 library](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-authentication-libraries) (ADAL), consider switching to the Azure AD v2 endpoint and the [Microsoft Azure AD v2.0 library](https://docs.microsoft.com/en-us/azure/active-directory/develop/reference-v2-libraries) (MSAL).


## Next Steps

- Learn how to [audit API differences](migrate-azure-ad-graph-audit-api-use.md) between Azure AD Graph and Microsoft graph.
- Learn more [Microsoft Graph](/graph/overview) concepts and practices.
- Use Experiment [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
