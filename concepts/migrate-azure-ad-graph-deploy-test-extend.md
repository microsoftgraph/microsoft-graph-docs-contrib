---
title: "Migration step 3: Deploy, test, and extend migrated apps  | Microsoft Graph"
description: "Describes how to migrate Azure Active Directory (Azure AD) apps to use the Microsoft Graph API (REST); this discusses step 3: deploy, test, and extend."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Step 3: Deploy, test, and extend

// TODO: Rewrite to include the step 3 content



1.  **Test throughly**

    Once you've updated your app, test it thoroughly to verify that it works as it did and that you haven't introduced any regressions.  

    Be sure to use multiple environments, data sets, and end-user personas, e.g. credentials with different roles, rights, and responsibilities. Go through the entire lifecycle, by having a new test user acquire the app for the first time, as well as an existing user (who already consented) trying to use the app again.

1.  **Deploy staged updates**

    Consider deploying your updates in stages.  A limited roll-out to a small set of friendly users can help identify glitches and other potentially-embarrassing issues.  This also gives you a chance to monitor initial reception and feedback.

    If the initial roll-out goes well, monitor progress as you deploy to larger audiences.

1.  **Explore new value**

    Now you've made the switch to Microsoft Graph, it's never been easier for you to unlock many more datasets and features that are now at your fingertips. New datasets and capabilities are introduced regularly.  

    - The What's New (thingie) provides a high-level introduction to major changes

    - The (foo) blog provides more detailed introductions.

    - The Changelog summarizes specific document updates.

    Following these updates to help you identify new ways to add value to your apps and to improve the experiences of your users.  

## Help and additional resources

If you run into problems or need help during the migration process, you can:

- Post questions to StackOverflow...

- Review ...

(Additional things we might include...)

- Learn about [Link to next article in the series](#).
- Follow Microsoft Graph [blogs](https://developer.microsoft.com/graph/blogs) for updates and review the [documentation](https://developer.microsoft.com/graph).
- Manage Azure AD resources, such as [users](https://docs.microsoft.com/graph/azuread-users-concept-overview), [groups](https://docs.microsoft.com/graph/office365-groups-concept-overview), and [identity access](https://docs.microsoft.com/graph/azuread-identity-access-management-concept-overview).
- Use [quick starts and samples](https://developer.microsoft.com/graph/get-started) to come up to speed quickly.
- Leverage [client libraries and SDKs](https://developer.microsoft.com/graph/get-started) to develop custom applications supporting multiple operating systems and languages.
- Experiment using the [Graph Explorer](https://aka.ms/ge).

## Next Steps

- Learn [how to migrate](migrate-azure-ad-graph-overview.md) Azure AD Graph apps to Microsoft Graph.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.


