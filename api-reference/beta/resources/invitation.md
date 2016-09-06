# invitation resource type

Represents an Azure AD invitation object. This is an invitation for an external user to the tenant. This will create a invitation object and a corresponding user object in the directory. Please note that invited   For the invited user to be a functional member of the tenant, he has to go through redemption process. Creating an invitaion would return a redemption URL in the response (inviteRedeemUrl). Currently, there is no API to do the redemption process. The invited user has to go through the redemption process interactively in a browser by visiting the redemption URL. 

If you set sendInvitatiionMessage, the create invitation API sends the redemption URL to the invited user. You can also customize the message that will sent to the user. If you wish to send the URL yourselves, you can set the sendInvitaitonMessage to false and get the redeem URL from the response to craft your own email.

Optionally, you can add the user to a group.


### Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create invitation](../api/invitation_post.md) | [invitation](invitation.md) | Write properties and relationships of invitation object.|

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|invitedUserDispayName|String|The display name of the user being invited.|
|invitedUserEmailAddress|String|The email address of the user being invited.|
|invitedUserMessageInfo|[invitedUserMessageInfo](invitedusermessageinfo.md)|Additonal message information of the user being invited.|
|sendInvitationMessage|Boolean|Indicates whether an email should be sent to the user being invited or not.|
|inviteRedirectUrl|String|The URL user should be redirected to once the invitation is redeemed.|
|inviteRedeemUrl|String|The URL user can use to redeem his invitation. Read-Only|
|status|Boolean|The status of his invitation. Possible values:Completed, InProgress, and Error|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|invitedToGroups|List<[Groups](groups.md)>|The groups user is invited to. Currently we only support one group per request.|
|invitedUser|[User](user.md)|The user created as part of the invitation. Read-Only|

### JSON representation

Here is a JSON representation of the resource

```json
{
  "invitedUserDisplayName": "string",
  "inviteUserEmailAddress": "string",
  "invitedUserMessageInfo": {"@odata.type": "microsoft.graph.InvitedUserMessageInfo"},
  "sendInvitationMessage": false,
  "inviteRedirectUrl": "string",
  "inviteRedeemUrl": "string",
  "status": "string",

  "invitedToGroups": [{"@odata.type": "microsoft.graph.group"}],
  "invitedUser": [{"@odata.type": "microsoft.graph.User"}]
}```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2016-22-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "invitation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
