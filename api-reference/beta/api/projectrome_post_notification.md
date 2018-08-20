# Create and publish a user-centric notification to Microsoft Graph
> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.
Create and publish a user-centric notification to Microsoft Graph. The notification is stored in the Microsoft Graph notification feed store, and is sent to all app clients on all device endpoints that the user is signed in to.  
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Notifications.ReadWrite.CreatedByApp    |
|Delegated (personal Microsoft account) | Notifications.ReadWrite.CreatedByApp    |

## HTTP request
```http
POST /me/notifications/}
```
## Request headers
|Name | Type | Description|
|:----|:-----|:-----------|
|Authorization | string |The authorization header is used to pass the credentials of the calling party. OAuth: Authorization: bearer <access_token> |
## Request body
In the request body, supply a JSON representation of a [notification](../resources/projectrome_notification.md) object.

## Response
If successful, this method returns the `201 Created` response code that indicates that the notification was successfully created and stored. 
## Example
#### Request
The following is an example of the request.

```http
POST https://graph.microsoft.com/beta/me/activities/
Content-type: application/json

{
    "targetHostName": "undemo.activity.windows.com",
    "appNotificationId": "testDirectToastNotification",
    "expirationDateTime": "2018-08-29T23:51:33.000Z",
    "payload": {
        "visualContent": {
            "title": "Hello Ignite!",
            "body": "Notifications are Great!"
        }
    },
    "targetPolicy": {
        "platformTypes": [
        "windows"
        ]
    },
    "priority": "High",
    "groupName": "TestGroup",
    "displayTimeToLive": "23"
}
```

#### Response
The following is an example of the response.

```http
HTTP/1.1 201
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/test872018/$metadata#users('rayxu1988%40gmail.com')/notifications/$entity",
    "appNotificationId": "testDirectToastNotification",
    "displayTimeToLive": 22,
    "expirationDateTime": "2018-08-24T12:31:53.858Z",
    "groupName": "TestGroup",
    "id": "cd5c5e6a-99ce-470a-9982-c47635e73620",
    "priority": "1",
    "payload": {
        "visualContent": {
            "title": "Hello Ignite!",
            "body": "Notifications are Great!"
        }
    }
}
```


