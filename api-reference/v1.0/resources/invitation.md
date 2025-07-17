---
title: "invitation resource type"
description: "Represents an invitation that is used to add external users to an organization as part of B2B collaboration in Microsoft Entra External ID."
ms.localizationpriority: high
author: "ppolkadots"
ms.subservice: "entra-users"
doc_type: resourcePageType
ms.date: 06/05/2024
---

# invitation resource type

Namespace: microsoft.graph

Represents an invitation that is used to add external users to an organization as part of business-to-business (B2B) collaboration in Microsoft Entra External ID.

The invitation process uses the following flow:

* An invitation is created.
* An invitation that contains an invitation link is sent to the invited user.
* The invited user selects the invitation link, signs in, and redeems the invitation, and the user entity that represents the invited user is created.
* The user is redirected to a specific page after the redemption completes.

Creating an invitation returns a redemption URL in the response (*inviteRedeemUrl*). The create invitation API can automatically send an email that contains the redemption URL to the invited user, by setting the *sendInvitationMessage* to `true`. You can also customize the message that is sent to the invited user. Instead, if you want to send the redemption URL through some other means, you can set the *sendInvitationMessage* to `false` and use the redeem URL from the response to craft your own communication. Currently, no API is available to perform the redemption process. The invited user has to select the *inviteRedeemUrl* link sent in the communication, and go through the interactive redemption process in a browser. When the process is completed, the invited user becomes an external user in the organization.


## Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create](../api/invitation-post.md) | invitation | Create an invitation object.|

## Properties

| Property| Type|Description|
|:---|:---|:---|
|invitedUserDisplayName|String|The display name of the user being invited.|
|invitedUserEmailAddress|String|The email address of the user being invited. Required. The following special characters aren't permitted in the email address:<br><ul><li>Tilde (`~`)</li><li>Exclamation point (`!`)</li><li>Number sign (`#`)</li><li>Dollar sign (`$`)</li><li>Percent (`%`)</li><li>Circumflex (`^`)</li><li>Ampersand (`&`)</li><li>Asterisk (`*`)</li><li>Parentheses (`( )`)</li><li>Plus sign (`+`)</li><li>Equal sign (`=`)</li><li>Brackets (`[ ]`)</li><li>Braces (`{ }`)</li><li>Backslash (`\`)</li><li>Slash mark (`/`)</li><li>Pipe (`\|`)</li><li>Semicolon (`;`)</li><li>Colon (`:`)</li><li>Quotation marks (`"`)</li><li>Angle brackets (`< >`)</li><li>Question mark (`?`)</li><li>Comma (`,`)</li></ul><br>However, the following exceptions apply:<br><ul><li>A period (`.`) or a hyphen (`-`) is permitted anywhere in the user name, except at the beginning or end of the name.</li><li>An underscore (`_`) is permitted anywhere in the user name, including at the beginning or end of the name.</li></ul>|
|invitedUserMessageInfo|[invitedUserMessageInfo](invitedusermessageinfo.md)|Contains configuration for the message being sent to the invited user, including customizing message text, language, and cc recipient list.|
|invitedUserType|String|The userType of the user being invited. By default, this is `Guest`. You can invite as `Member` if you're a company administrator. |
|inviteRedirectUrl|String|The URL the user should be redirected to after the invitation is redeemed. Required.|
|inviteRedeemUrl|String|The URL the user can use to redeem their invitation. Read-only.|
|resetRedemption|Boolean|Reset the user's redemption status and reinvite a user while retaining their user identifier, group memberships, and app assignments. This property allows you to enable a user to sign-in using a different email address from the one in the previous invitation. When `true`, the **invitedUser**/**id** relationship is required. For more information about using this property, see [Reset redemption status for a guest user](/entra/external-id/reset-redemption-status).|
|sendInvitationMessage|Boolean|Indicates whether an email should be sent to the user being invited. The default is `false`.|
|status|String|The status of the invitation. Possible values are: `PendingAcceptance`, `Completed`, `InProgress`, and `Error`.|

## Relationships
| Relationship | Type    |Description|
|:---------------|:--------|:----------|
|invitedUser|[user](user.md)|The user created as part of the invitation creation. Read-only. The **id** property is required in the request body to reset a redemption status.|
|invitedUserSponsors|[directoryObject](../resources/directoryobject.md) collection|The users or groups who are sponsors of the invited user. Sponsors are users and groups that are responsible for guest users' privileges in the tenant and for keeping the guest users' information and access up to date. |

## JSON representation
The following JSON representation shows the resource type.

<!-- { "blockType": "resource", "baseType": "microsoft.graph.entity", "@odata.type": "microsoft.graph.invitation" } -->
```json
{
  "invitedUserDisplayName": "string",
  "invitedUserEmailAddress": "string",
  "invitedUserMessageInfo": {"@odata.type": "microsoft.graph.invitedUserMessageInfo"},
  "sendInvitationMessage": false,
  "inviteRedirectUrl": "string",
  "inviteRedeemUrl": "string",
  "resetRedemption": false,
  "status": "string",
  "invitedUser": {"@odata.type": "microsoft.graph.user"},
  "invitedUserType": "string"
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2016-22-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "invitation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
