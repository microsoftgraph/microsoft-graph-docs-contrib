---
title: "Build interactive apps by using Microsoft Graph APIs"
description: "Learn about the Microsoft Graph integration pattern for using Microsoft Graph APIs to build interactive apps."
author: "OlgaPodo"
ms.localizationpriority: low
---

# Build interactive apps by using Microsoft Graph APIs

This article describes a common Microsoft Graph integration pattern for a business scenario that requires a user interface that can create, update, and manage channel messages in real-time, and that depends on Microsoft 365 services such as sending and receiving messages from different teams.

This scenario has the following architecturally significant requirements:

- An application integration type, because it relies on complex Microsoft 365 functionality.
- A bidirectional data flow between the app and Microsoft 365.
- A low volume of data compared to automated systems based on single human interations. Depending on the number of users, however, the data volume might be high.
- A real-time data operation on the app, with some asynchronous server-side operations, such as delivering email to a remote client.

The best and only choice for this application is to use Microsoft Graph RESTful HTTP APIs. The client app responds to user actions and can make requests and process the data at its speed, controlled by the client environment.

Simple **reference architecture** for this app:

![SimpleWebApp](.././images/graph-arc-center/webAppAPI.png)

## Components

The architecture uses the following components:

Azure App Service lets you build and host web apps, mobile backends, and RESTful APIs in your preferred programming language, without managing infrastructure. It offers auto-scaling and high availability, supports both Windows and Linux, and enables automated deployments from GitHub, Azure DevOps, or any Git repo.
Azure Active Directory is required to manage authentication for the Microsoft Graph APIs and supports delegated and application permissions to enable OAuth flow.
SQL Database is used to store application data and state and is an optional part of the solution.
Microsoft Graph AGS  is a single gateway, <https://graph.microsoft.com>, to access Microsoft Graph RESTful HTTP APIs.
3 P app implements custom logic and API orchestration.

## Considerations

**Availability**: The client app periodically polls the Graph APIs for data. The client app can make requests and process the data at its speed, controlled by the client environment.

**Latency**: The client app queries the Graph APIs for data in real-time, but there may be some latency depending on the network conditions and the load on the Graph service.

**Scalability**: The client app can scale horizontally by adding more instances to the App Service plan. The Graph APIs can handle a large number of requests, but they also have throttling limits and policies to prevent abuse. The client app should implement retry logic and exponential back-off to handle throttling errors gracefully.

**Solution complexity**: Although this solution might use the Microsoft Graph SDK, it still requires custom code to poll and process the data. If the data volume is large, sequential processing may not be sufficient, and parallel processing may be necessary. For these reasons, we consider this solution to have medium complexity.

## See also

- [Best practices in cloud applications]([./../webhooks.md](https://learn.microsoft.com/en-us/azure/architecture/best-practices/index-best-practices))
- [Microsoft Graph fundamentals](/training/basics-learn-graph)

