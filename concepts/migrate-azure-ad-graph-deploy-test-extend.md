---
title: "Deploy, test, and extend migrated apps"
description: "Describes how to migrate Azure Active Directory (Azure AD) Graph apps to use the Microsoft Graph APIs."
author: FaithOmbongi
ms.reviewer: dkershaw
ms.topic: conceptual
ms.localizationpriority: medium
ms.prod: applications
ms.date: 02/14/2024
#Customer intent: As a developer migrating apps to Microsoft Graph, I want to understand some best practices for confidently deploying changes to my app, so that I can ensure a smooth transition from Azure AD Graph to Microsoft Graph.
---

# Deploy, test, and extend

This article is step 4 of the [process to migrate apps](migrate-azure-ad-graph-planning-checklist.md).

1.  **Test thoroughly**

    Once you update your app, test it thoroughly to verify that it works as expected and that you haven't introduced any regressions.  

    Be sure to use multiple environments, data sets, and end-user personas, for example, credentials with different roles, rights, and responsibilities. Go through the entire lifecycle, by having a new test user acquire the app for the first time, and an existing user (who already consented) trying to use the app again.

2.  **Deploy staged updates**

    Consider deploying your updates in stages.  A limited roll-out to a small set of friendly users can help identify glitches and other potentially embarrassing issues.  A staged rollout also gives you a chance to monitor initial reception and feedback.

    If the initial roll-out goes well, monitor progress as you deploy to larger audiences.

3.  **Explore new value**

    With the switch to Microsoft Graph, you can now unlock many more datasets and features.
    
    Microsoft Graph supports many new Microsoft Entra datasets and features that aren't available in Azure Active Directory (Azure AD) Graph. It's the [API gateway to Microsoft 365 services and other Microsoft Entra services](./index.yml).
    Check for new datasets and capabilities regularly.  

    - See [Major services and features in Microsoft Graph](overview-major-services.md).
    - Take a look at some [partner solutions](https://developer.microsoft.com/graph/partners).
    - Explore the [Microsoft Graph blog](https://developer.microsoft.com/graph/blogs) for the latest news about Microsoft Graph and some great learning series.
    - The [changelog](/graph/changelog) summarizes service and document updates. Following these updates helps you track new APIs introduced to /beta (preview) and those promoted to v1.0 (GA).  These new APIs can provide new ways for you to add more value and new experiences to your apps.  

## Related content

If you run into problems or need help during the migration process, you can:

- Review the [checklist](migrate-azure-ad-graph-planning-checklist.md) again
- Post questions to [Microsoft Graph on Q&A](/answers/topics/microsoft-graph-applications.html) 
- Review Microsoft Graph samples to contrast and compare with your existing application code:
  - **Apps that use the REST API**: explore [quick starts and samples](https://developer.microsoft.com/graph/get-started), choose your platform of choice and run through the quick start or search for an appropriate sample
  - **App that uses the .NET client library**: review [console-csharp-snippets-sample](https://github.com/microsoftgraph/console-csharp-snippets-sample) or [dotnetcore-console-sample](https://github.com/microsoftgraph/dotnetcore-console-sample)

See also:

- Use [quick starts and samples](https://developer.microsoft.com/graph/get-started) to come up to speed quickly.
- Use [client libraries and SDKs](/graph/sdks/sdks-overview) to develop custom applications 
- Explore [Microsoft Graph](./overview.md) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
