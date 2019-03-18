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

## Planning checklist

Use the following checklist to plan your migration:

1.  **Research the differences between the APIs**

    In many respects, the Microsoft Graph API is similar to the earlier Azure AD Graph API; however, there are differences.  Certain resources, properties, methods, and permissions have changed. 

    You can, for example, simply change the endpoint service name and version in your code for many calls.

    However, certain resources, properties, and methods have changed.

1.  **Audit your app**: 

    Make an inventory of the endpoints called by your app and the permissions they require.  

    Also, review specials features, such as directory extensions, batching, differential queries, and so on.

1.  **Check feature parity**

    Verify that the APIs you need are generally available as Microsoft Graph 1.0 APIs. 

    Verify that available APIs work the same way.

    (TODO: What advice do we have if they're only in beta? Or if there are no plans to support? )

    (TODO: Isn't this essentially the same as the advice in the previous two steps?  What makes each step unique so that it needs to be called out?)

1.  **Account for syntax and behavioral differences** 

    In some cases, new capabilities and features are designed to replace earlier approaches.

    Use the [Graph Explorer](https://aka.ms/ge) to experiment with new calls and to develop new approaches. For best results, sign in using the credentials of your app so that you see what it sees.

1.  **Evaluate .NET client library**

    If you're using the Azure AD Graph .NET client library, take time to review our advice and examples.  

1.  **Review token acquisition**

    If you're currently using the [Azure AD v1.0 library](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-authentication-libraries) (ADAL), consider switching to the Azure AD v2 endpoint and the [Microsoft Azure AD v2.0 library](https://docs.microsoft.com/en-us/azure/active-directory/develop/reference-v2-libraries) (MSAL).

1.  **Test throughly**

    Once you've updated your app, test it thoroughly to verify that it works as it did and that it doesn't contain new bugs.  

    Be sure to use multiple environments, data sets, and end-user personas, e.g. credentials with different roles, rights, and responsibilities.

1.  **Deploy staged updates**

    Consider deploying your updates in stages.  A limited roll-out to a small set of friendly users can help identify glitches and other potentially-embarrassing issues.  This also gives you a change to monitor initial reception and feedback.

    If the initial roll-out goes well, monitor progress as you deploy to larger audiences.

1.  **Explore new value**

    Once your app is updated to Microsoft Graph API, continue exploring the API and supported services. New features and capabilities are introduced regularly.  

    - The What's New (thingie) provides a high-level introduction to major changes

    - The (foo) blog provides more detailed introductions.

    - The Changelog summarizes specific document updates.

    Following these updates to help you identify new ways to add value to your apps and to improve the experiences of your users.  

## Next Steps

- Learn about request differences between Azure AD Graph and Microsoft Graph.
- Follow Microsoft Graph [blogs](https://developer.microsoft.com/graph/blogs) for updates and review the [documentation](https://developer.microsoft.com/graph).
- Manage Azure AD resources, such as [users](https://docs.microsoft.com/graph/azuread-users-concept-overview), [groups](https://docs.microsoft.com/graph/office365-groups-concept-overview), and [identity access](https://docs.microsoft.com/graph/azuread-identity-access-management-concept-overview).
- Use [quick starts and samples](https://developer.microsoft.com/graph/get-started) to come up to speed quickly.
- Leverage [client libraries and SDKs](https://developer.microsoft.com/graph/get-started) to develop custom applications supporting multiple operating systems and languages.
- Experiment using the [Graph Explorer](https://aka.ms/ge).
