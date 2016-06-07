# Send a sharing invitation

Sends a sharing invitation to an existing item. A sharing invitation creates a
unique sharing link and sends an email to the recipient of the invitation that
includes the sharing link.

### Prerequisites
One of the following **scopes** is required to execute this API:

  * Files.ReadWrite

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /drive/items/<item-id>/invite
POST /groups/<group-id>/drive/items/<item-id>/invite
```

### Request headers

| Name          | Type   | Description               |
|:--------------|:-------|:--------------------------|
| Authorization | string | Bearer <token>. Required. |


### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter      | Type                                                        | Description                                                                                                |
|:---------------|:------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------|
| recipients     | [driveRecipient](../resources/driverecipient.md) collection | A list of recipient email addresses for the sharing invitation.                                            |
| message        | String                                                      | A plain text formatted message that is included in the sharing invitation. Maximum length 2000 characters. |
| requireSignIn  | Boolean                                                     | Specifies where the recipient of the invitation is required to sign-in to view the shared item.            |
| sendInvitation | Boolean                                                     | Specifies if an email or post is generated (false) or if the permission is just created (true).            |
| roles          | String collection                                           | Specify the roles that are be granted to the recipients of the sharing invitation.                         |


### Response
If successful, this method returns `200 OK` response code and
[permission](../resources/permission.md) collection object in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "item_invite"
}-->
```http
POST https://graph.microsoft.com/beta/me/drive/items/<item-id>/invite
Content-type: application/json

{
  "recipients": [ { "email": "dan@contoso.com" } ],
  "message": "Here's the file I mentioned during our meeting.",
  "requireSignIn": true,
  "sendInvitation": true,
  "roles": [ "read" ]
}
```

##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 939

{
  "value": [
    {
      "grantedTo": {
        "application": {
          "displayName": "displayName-value",
          "id": "id-value"
        },
        "device": {
          "displayName": "displayName-value",
          "id": "id-value"
        },
        "user": {
          "displayName": "displayName-value",
          "id": "id-value"
        }
      },
      "id": "id-value",
      "invitation": {
        "email": "email-value",
        "redeemedBy": "redeemedBy-value",
        "signInRequired": true
      },
      "inheritedFrom": {
        "driveId": "driveId-value",
        "id": "id-value",
        "path": "path-value"
      },
      "link": {
        "application": {
          "displayName": "displayName-value",
          "id": "id-value"
        },
        "type": "type-value",
        "webUrl": "webUrl-value"
      },
      "roles": [
        "roles-value"
      ]
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->

<!-- {
  "type": "#page.annotation",
  "description": "item: invite",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
