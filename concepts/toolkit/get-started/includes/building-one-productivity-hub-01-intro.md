---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041 -->

Microsoft Graph Toolkit is a collection of web components and authentication providers for connecting apps to Microsoft 365 data and intelligence. This tutorial shows you how to create a web application to monitor your calendar events, to-do tasks, and files by using Microsoft Graph Toolkit components and an MSAL2 provider.

## How does the sample work?

This sample creates a web app that consumes the Microsoft Graph Toolkit MSAL2 provider to enable authentication through Microsoft Entra ID and uses UI components to render calendar events, to-do tasks, and files that will look and feel like native Microsoft experiences.

![Screenshot showing the One Productivity Hub sample](../../../images/mgt-one-productivity-hub/one-productivity-hub-overview.gif)

## Prerequisites

- You need a Microsoft 365 developer tenant. You might qualify for one through the [Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program); for details, see the [FAQ](/office/developer-program/microsoft-365-developer-program-faq#who-qualifies-for-a-microsoft-365-e5-developer-subscription-). Alternatively, you can [sign up for a 1-month free trial or purchase a Microsoft 365 plan](https://www.microsoft.com/en-us/microsoft-365/try).
- Install [Visual Studio Code](https://code.visualstudio.com/).
- Install [Visual Studio Code Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer) to test your web app.
