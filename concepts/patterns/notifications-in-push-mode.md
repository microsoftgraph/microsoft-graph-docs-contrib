---
title: "Get real-time updates for data changes by using Microsoft Graph"
description: "Learn about the Microsoft Graph integration pattern for event-based solutions that rely on change notifications in push mode."
author: "OlgaPodo"
ms.localizationpriority: low
---

# Get real-time updates for data changes by using Microsoft Graph

This article describes a common Microsoft Graph integration pattern for a business scenario that offers enterprise collaboration enhancements for mobile apps to receive a read-only feed of shared messages from Microsoft Teams in near-real time.

This scenario is a non-interactive use case that relies on data changes triggered by external events, and has the following architecture requirements:

- A data integration type.
- An outbound data flow from Microsoft 365 boundaries to the app.
- A low data volume per human interaction, but a potentially high data volume depending on the number of users.
- A near-real-time data latency to generate up-to-date feed.
  
The best integration option for this scenario is to use Microsoft Graph change notifications, which can deliver event notifications as well as the contents of a shared message, and implement webhooks. The client app provides a client secret and an encryption key and exposes an HTTP endpoint where the Microsoft Graph notification service posts changes. The client app can accept and promptly respond to synchronous Microsoft Graph requests and can scale to handle events triggered by other clients that generate messages. This type of app interaction is called push mode.

The following diagram shows the architecture for this solution.

![A diagram that shows the Microsoft Graph notification service interacting with Microsoft Entra ID, applicaton gateway, app services, storage queue, function apps, and the destination service.](.././images/webhooks.png)

## Solution components

The solution architecture includes the following components:

- Azure App Service lets you build and host web apps, mobile backends, and RESTful APIs in your preferred programming language, without managing infrastructure. It offers auto-scaling and high availability, supports both Windows and Linux, and enables automated deployments from GitHub, Azure DevOps, or any Git repo.
- Microsoft Entra ID, which is required to manage authentication for Microsoft Graph APIs and supports delegated and application permissions to enable OAuth flow.
- Function app, which is a serverless component that allows you to scale for a high volume of notifications and has business logic to process notifications and send them to a destination service.
- Simple Storage Queue, which helps you shed the load from the app service by persisting notifications before asynchronous processing by an instance of a Function App.
- Azure Application Gateway, which provides web security and routing capabilities.
- Microsoft Graph notification service, which manages notification subscriptions and delivers change notifications to clients.
 

## Considerations

The following considerations support the use of this integration pattern:

- **Availability**: Microsoft Graph calls the client webhook whenever a new message is published in a shared channel or a chat. The webhook must have high availability throughout the day or even for a full 24 hours.

- **Latency**: The webhook must acknowledge Microsoft Graph notification requests within three seconds. If Microsoft Graph does not receive a 200 class code within this time, it resends the change notification multiple times, for up to four hours.

- **Scalability**: The client webhook must be able to scale for a high volume of notifications at any time of the day. It can do this by adding more instances to the app service and instantiating more function app instances to update the destination service promptly.

- **Solution complexity**: The webhook solution also requires custom code to maintain subscriptions, and encryption keys to process the data. This solution is highly complex because of the number of components involved and the scalability and availability requirements.

## Related content

- [Change notifications](./../change-notifications-overview.md)
- [Real-time presence with Microsoft 365](/azure/architecture/solution-ideas/articles/presence-microsoft-365-power-platform)
  
