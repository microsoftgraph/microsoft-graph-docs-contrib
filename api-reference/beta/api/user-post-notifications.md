---
title: "Create and send a notification (deprecated)"
description: "Create and send a notification targeting a user through Microsoft Graph."
ms.localizationpriority: medium
ms.subservice: "notifications"
doc_type: apiPageType
author: "merzink"
ms.date: 04/04/2024
---

# Create and send a notification (deprecated)

Namespace: microsoft.graph

> [!IMPORTANT]
> The Microsoft Graph notifications API is deprecated and will stop returning data by the end of January 2022. For an alternative notification experience, see [Microsoft Azure Notification Hubs](/azure/notification-hubs), and [see this blog post](https://devblogs.microsoft.com/microsoft365dev/retiring-microsoft-graph-notifications/) for more information.

Create and send a notification targeting a user through Microsoft Graph. The notification is stored in the Microsoft Graph notification feed store, and is sent to all app clients on all device endpoints that the user is signed in to.  

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_post_notifications" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-post-notifications-permissions.md)]



## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/notifications/
```
## Request headers
|Name | Description|
|:----|:-----------|
|Authorization | The authorization header is used to pass the credentials of the calling party. Bearer {token}. Required. |
|X-UNS-ID | The UserNotificationSubscriptionId that is returned by the Microsoft Graph notification service after creating a subscription and is used to target the specific user. Required. |
|Content-type | application/json. Required.|

## Request body
In the request body, supply a JSON representation of a [notification](../resources/projectrome-notification.md) object.

## Response
If successful, this method returns a `201 Created` response code that indicates that the notification was successfully created and stored. The notification is later fanned-out to all specified endpoints with a valid subscription. 

The following table lists the possible error and response codes that can be returned.

|Error code             | Description                              |
|:-----------------------------------|:----------------------------------------------------------|
|HttpStatusCode.BadRequest           | Body is an array (multiple notifications isn't supported).|
|HttpStatusCode.BadRequest           | Body doesn't match the contract for the API.               |
|HttpStatusCode.Forbidden            | Caller is on the blocked list.                          |
|HttpStatusCode.MethodNotAllowed     | The HTTP method used isn't supported.                     |
|HttpStatusCode.BadRequest           | Unsupported headers are present in the request. Two headers aren't supported:<br/><br/>If-Modified-Since<br/>If-Range |                    
|HttpStatusCode.UnsupportedMediaType | The header Content-Encoding is present and has compression algorithm values other than `Deflate` or `Gzip`.  |
|HttpStatusCode.BadRequest           | Invalid payload.                                           |
|HttpStatusCode.Forbidden            | Caller isn't authorized to act on behalf of the user or send notification to the user.                         |
|HttpStatusCode.Unauthorized         |    Request body contains invalid activity data types.        |
|HttpStatusCode.OK                   |     Activity successfully created.                            |
|HttpStatusCode.NotAcceptable        |    Request has been throttled or the server is busy.    |


## Example
### Request
The following example shows a request.

```http
POST https://graph.microsoft.com/beta/me/notifications/
Content-type: application/json

{
    "targetHostName": "graphnotifications.sample.windows.com",
    "appNotificationId": "testDirectToastNotification",
    "expirationDateTime": "2019-10-30T23:59:00.000Z",
    "payload": {
        "visualContent": {
            "title": "Hello World!",
            "body": "Notifications are Great!"
        }
    },
    "targetPolicy": {
        "platformTypes": [
    "windows",
    "ios",
    "android"
        ]
    },
    "priority": "High",
    "groupName": "TestGroup",
    "displayTimeToLive": "60"
}
```

### Response
Here's an example of the corresponding response.

```http
HTTP/1.1 201
client-request-id: 71e62feb-8d72-4912-8b2c-4cee9d89e781
content-length: 356
content-type: application/json
location: https://graph.microsoft.com/beta/me/activities/119081f2-f19d-4fa8-817c-7e01092c0f7d
request-id: 71e62feb-8d72-4912-8b2c-4cee9d89e781

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('graphnotify%40contoso.com')/notifications/$entity",
    "displayTimeToLive": 59,
    "expirationDateTime": "2019-10-28T22:05:36.25Z",
    "groupName": "TestGroup",
    "id": "119081f2-f19d-4fa8-817c-7e01092c0f7d",
    "priority": "High",
    "payload": {
        "visualContent": {
            "title": "Hello World!",
            "body": "Notifications are Great!"
        }
    }
}
```


