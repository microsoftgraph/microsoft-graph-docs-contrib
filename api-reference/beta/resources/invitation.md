# Invitation manager

Use the invitation manager to create an invite, in order to add an external user to the organization's directory. The invitation process follows these steps:

1. Create an invitation: Creating an invitation will return a redemption URL in the response (inviteRedeemUrl).
2. Send the invitation: Creating the invitation can automatically send an invitation email to the invited user, or the app can choose to send the inviteRedeemUrl link to the invited user, using whatever communications mechanism it desires.
3. Redeem the invitation: Currently, there is no API to perform the redemption process. The invited user has to click on the inviteRedeemUrl link sent in the communication in the step above, and go through the interactive redemption process in a browser. Once completed, the invited user becomes an external user in the organization.


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
|invitedToGroups|List<[Group](group.md)>|The groups user is invited to. Currently we only support one group per request.|
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
