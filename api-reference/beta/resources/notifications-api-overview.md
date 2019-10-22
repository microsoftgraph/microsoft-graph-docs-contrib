---
title: "Use the notifications REST API in Microsoft Graph"
description: "You can use the notifications API in Microsoft Graph to send push notifications to a user. Simply target a user account to send a notification to, and the platform will deliver the notification to all device endpoints. Notifications API requests are performed on behalf of a user via delegated permissions and the [notification permission]( /graph/permissions_reference), which can be used with either Microsoft accounts or work or school accounts."
localization_priority: Priority
ms.prod: "project-rome"
doc_type: conceptualPageType
author: ""
---

# Use the notifications REST API in Microsoft Graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can use the notifications API in the Microsoft Graph to send push notifications to a user. Simply post a notification to your target user, and the platform will deliver the notification to all device endpoints registered to that user. The high-level flow is as follows:

1. User signs-in to your application, which creates a subscription with the Microsoft Graph notification service.  A specific 'user notification subscription ID' or UNSID will be returned to the calling application.
2. The application then sends this UNSID to your application service.
3. When ready to send a notification, your application service [authenticates with the Microsoft identity platform](/azure/active-directory/develop/v1-oauth2-client-creds-grant-flow) and posts a notification via the Microsoft Graph notification service, providing the auth token, target user's UNSID, and notification payload.
4. Microsoft Graph notification service will subsequently fan-out notifications to all endpoints of the user with an active subscription.  

This type of user-centric notification is represented by the [notification](../resources/projectrome-notification.md) resource and is stored within the Microsoft Graph. It can then be accessed and managed by the client application via the [client-side SDK APIs](https://aka.ms/GNSDK). If you're new to Microsoft Graph notification service, check out the [notification overview](https://docs.microsoft.com/en-us/graph/notifications-concept-overview) section to learn more.    

> [!NOTE]
> If your client is not using the new, lightweight [notification SDK](http://aka.ms/GNSDK) and is instead using the cross-device [Project Rome SDK APIs](https://github.com/microsoft/project-rome), then notification requests are performed on behalf of a user via [delegated permissions](/graph/permissions-reference#delegated-permissions-application-permissions-and-effective-permissions) and the [notification permission]( /graph/permissions_reference), which can be used with either Microsoft accounts or work or school accounts.


## Next steps
- See the [notification resource](../resources/projectrome-notification.md) and create notifications to engage with your users. 
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Get started with client integration, following the steps outlined in the [integration overview](/graph/notifications-integration-e2e-overview).
