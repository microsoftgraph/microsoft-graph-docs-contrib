---
title: "Deploy, test, and extend migrated apps"
description: "Describes how to migrate Azure Active Directory (Azure AD) Graph apps to use the Microsoft Graph APIs."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: krbash
ms.topic: quickstart
ms.localizationpriority: medium
ms.subservice: entra-applications
ms.date: 02/14/2025
#Customer intent: As a developer migrating apps to Microsoft Graph, I want to understand some best practices for confidently deploying changes to my app, so that I can ensure a smooth transition from Azure AD Graph to Microsoft Graph.
---

# Deploy, test, and extend

> This article is step 4 in the [Azure AD Graph app migration planning checklist](migrate-azure-ad-graph-planning-checklist.md) series.

## Test thoroughly

Once you update your app, test it thoroughly to verify that it works as expected and that you haven't introduced any regressions.

- Test your app in different environments to ensure compatibility across various setups.

- Utilize various data sets to simulate real-world scenarios.

- Test with different user credentials, roles, rights, and responsibilities to cover all possible use cases.

- Go through the entire lifecycle, including a new test user acquiring the app for the first time and an existing user (who already consented) using the app again.

## Deploy staged updates

Consider deploying your updates in stages to minimize risks and gather feedback early.

- Start with a small set of friendly users to identify glitches and other issues.

- Monitor initial reception and feedback closely.

- If the initial roll-out goes well, *gradually* deploy to larger audiences.

- Continuously monitor progress and address any issues that arise.

## Explore new value

With the switch to Microsoft Graph, you can now unlock many more datasets and features.

Microsoft Graph supports many new Microsoft Entra datasets and features that aren't available in Azure Active Directory (Azure AD) Graph. It's the [API gateway to Microsoft 365 services and Microsoft Entra services](./index.yml).

- Check for new datasets and capabilities regularly.

- See [Major services and features in Microsoft Graph](overview-major-services.md).

- Explore [partner solutions](https://developer.microsoft.com/graph/partners) that use Microsoft Graph.

- Follow the [Microsoft Graph blog](https://developer.microsoft.com/graph/blogs) for the latest news and learning series.

- Subscribe to the [Microsoft Graph changelog](/graph/changelog) to keep track of new APIs introduced to `/beta` (preview) and those promoted to `v1.0` (GA).

## Support

If you run into problems or need help during the migration process, you can:

- Review the [checklist](migrate-azure-ad-graph-planning-checklist.md) again
- Post questions to [Microsoft Graph on Q&A](/answers/topics/microsoft-graph-applications.html) 
- Review Microsoft Graph samples to contrast and compare with your existing application code:
  - **Apps that use the REST API**: explore [quick starts and samples](https://developer.microsoft.com/graph/get-started), choose your platform of choice and run through the quick start or search for an appropriate sample
  - **App that uses the .NET client library**: review [console-csharp-snippets-sample](https://github.com/microsoftgraph/console-csharp-snippets-sample) or [dotnetcore-console-sample](https://github.com/microsoftgraph/dotnetcore-console-sample)
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.

## Related content

- Use [client libraries and SDKs](/graph/sdks/sdks-overview) to develop custom applications