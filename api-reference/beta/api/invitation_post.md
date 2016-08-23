# Create Invitation

Use this API to create a new Invitation.
The request body contains the invitation to create. At a minimum, you must specify the required properties for the invitation. You can optionally specify any other writable properties.
### Prerequisites
The following **scopes** are required to execute this API:
*Directory.ReadWrite.All*
Additonally, if you are inviting to a group.
*Group.ReadWrite.All*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /invitations
```
### Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer <token>. Required.  |
| Content-Type  | application/json  |

### Request body
In the request body, supply a JSON representation of [invitation](../resources/invitation.md) object.

The following table shows the properties that are required when you create a invitation.

| Parameter | Type | Description|
|:---------------|:--------|:----------|
|invitedUserEmailAddress |string | The email address of the user your inviting.|
|inviteRedirectUrl |string |The URL user should be redirected to after redemption.|


### Response
If successful, this method returns `201, Created` response code and [invitation](../resources/invitation.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_user_from_users"
}-->
```http
POST https://graph.microsoft.com/beta/invitations
Content-type: application/json
Content-length: 551

{
  "invitedUserEmailAddress": "yyy@test.com",
  "inviteRedirectUrl": "https://myapp.com"
}
```
In the request body, supply a JSON representation of [invitation](../resources/invitation.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.invitations"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 551

{
  "id": "7b92124c-9fa9-406f-8b8e-225df8376ba9",
  "inviteRedeemUrl": "https://invitations.microsoft.com/redeem/?tenant=04dcc6ab-388a-4559-b527-fbec656300ea&user=7b92124c-9fa9-406f-8b8e-225df8376ba9&ticket=VV9dmiExBsfRIVNFjb9ITj9VXAd07Ypv4gTg%2f8PiuJs%3d&lc=1033&ver=2.0",
  "invitedUserDisplayName": "yyy",
  "invitedUserEmailAddress": "yyy@test.com",
  "sendInvitationMessage": false,
  "invitedUserMessageInfo": {
     "messageLanguage": null,
     "ccRecipients": [
          {
             "emailAddress": {
                 "name": null,
                 "address": null
              }
          }
     ],
     "customizedMessageBody": null
  },
  "inviteRedirectUrl": "https://myapp.com/",
  "status": "Completed",
  "invitedToGroups": [],
  "invitedUser": {
      "id": "243b1de4-ad9f-421c-a933-d55305fb165d"
  }
}
```
