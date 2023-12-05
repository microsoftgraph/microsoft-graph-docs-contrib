---
title: "Build interactive apps with APIs and webhooks"
description: "Microsoft Graph Integration pattern for interactive app that uses change notifications."
author: "OlgaPodo"
ms.localizationpriority: low
---

# Interactive app with change notifications via webhooks

A **business scenario** needs a mobile email client that lets users read, reply and compose new messages and alerts them of new emails.

This business scenario describes an interactive use case that relies on data and functionality of the Microsoft 365 email services. It uses Graph APIs to read data, call email operations and receives Graph change notifications using webhooks through the web socket channel. This app has the following **architecturally significant requirements**:

- An application integration type.
- A bidirectional data flow between Microsoft 365 and the app.
- A low data volume as it serves a single user.
- A medium data latency acceptable for push notifications.
  
This app uses multiple Graph integration options such as APIs, change notifications, and optionally change tracking API functionality. To receive change notifications via WebSocket the app uses SignalR SDK, which abstract and simplifies WebSocket management.

A simple **reference architecture** for this mobile app with a WebSocket webhook:

![hybrid](.././images/graph-arc-center/HybridAPIWebhooks.png)

## Components

The architecture uses the following components:

- Azure Active Directory, which is required to manage authentication for the Microsoft Graph APIs and supports Delegated and Application permissions to enable OAuth flow.
- Microsoft Graph Notification Services, which manages notification subscriptions and delivers change notifications to client apps.
- Microsoft Graph AGS, which is a single gateway, https://graph.microsoft.com, to access Graph RESTful HTTP APIs.
- Custom Mobile App, which implements custom logic, webhooks and communicates with Graph platform. 

## Considerations

**Availability**: The custom app should be highly available on the edge device and can support an offline mode when there is no reliable internet connection.

**Latency**: Graph RESTful HTTP APIs usually respond withing a second, but the overall latency depends on the internet connection speed. Graph notifications are generated within seconds after the change, but their delivery depends on internet connection, mobile vendor SLAs and the webhook availability.

**Scalability**: Microsoft Graph services are highly scalable, geo distributed and support requests and notifications for millions of clients.

**Solution Complexity**: This solution requires custom code to orchestrate APIs, maintain notification subscriptions, and receive change notifications via webhooks. While this solution doesn’t require elasticity, it needs to support users under different network conditions and potentially handle a burst of change notifications. We consider this solution highly complex.

## See also

- [Best practices in cloud applications]([./../webhooks.md](https://learn.microsoft.com/en-us/azure/architecture/best-practices/index-best-practices))
- [Training: Use change notifications and track changes with Microsoft Graph](/training/modules/msgraph-changenotifications-trackchanges)
- [Microsoft Graph Fundamentals](/training/basics-learn-graph)

