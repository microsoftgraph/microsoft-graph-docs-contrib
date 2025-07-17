---
author: "jaiprakashmb"
ms.localizationpriority: high
ms.subservice: intune
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

#### Intune notifications service limits

| Request type | Limit per tenant for all apps | Limit per app per tenant |
| ------------ | ----------------------------- | ------------------------ |
| POST, PUT, DELETE, PATCH | 200 requests per 20 seconds | 100 requests per 20 seconds |
| Any | 2000 requests per 20 seconds | 1000 requests per 20 seconds |

The preceding limits apply to the following resources: 

| <!-- fake header--> |
|---|
| <ul> <li> [localizedNotificationMessage](/graph/api/resources/intune-notification-localizednotificationmessage)  <li> [notificationMessageTemplate](/graph/api/resources/intune-notification-notificationmessagetemplate) </ul> |
