---
title: "Create invitation"
description: "Create a new invitation or reset the redemption status for a guest user. The invitation adds an external user to the organization."
ms.localizationpriority: medium
author: "ppolkadots"
ms.subservice: "entra-users"
doc_type: apiPageType
ms.date: 10/17/2024
---

# Create invitation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [invitation](../resources/invitation.md) or reset the redemption status for a guest user who already redeemed their invitation. The invitation adds the external user to the organization as part of B2B collaboration. B2B collaboration is supported in both Microsoft Entra External ID in workforce and external tenants.

The following options are available for creating an invitation:

1. On invitation creation, Microsoft Graph can automatically send an invitation email directly to the invited user, or your app can use the **inviteRedeemUrl** returned in the response to craft your own invitation (through your communication mechanism of choice) to the invited user. If you decide to have Microsoft Graph send an invitation email automatically, you can specify the content and language of the email by using [invitedUserMessageInfo](../resources/invitedusermessageinfo.md).
2. When the user is invited, a user entity (of **userType** `Guest`) is created and can be used to control access to resources. The invited user has to go through the redemption process to access any resources they have been invited to.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "invitation_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/invitation-post-permissions.md)]

> [!IMPORTANT]
> 
> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. The following least privileged roles are supported for this operation:
> - To invite guests: 
>   - Both nonadmin member users and guest users can invite guests if the tenant admin hasn't restricted the [default user permissions](/entra/fundamentals/users-default-permissions?toc=%2Fgraph%2Ftoc.json).
>   - Guest Inviter, Directory Writers, or User Administrator.
> - To reset the redemption status: Helpdesk Administrator or User Administrator.
> - Application permissions (app-only) don't work if B2B invitations are disabled on the tenant.
> - When resetting the redemption status for a guest user, the *User.ReadWrite.All* permission is the least privileged permission for the operation.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /invitations
```

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json  |

## Request body

In the request body, supply a JSON representation of an [invitation](../resources/invitation.md) object.

The following table lists the parameters that are required when you create an invitation.

| Parameter | Type | Description|
|:---------------|:--------|:----------|
|invitedUserEmailAddress |string | The email address of the user you're inviting.|
|inviteRedirectUrl |string |The URL that the user will be redirected to after redemption.|

## Response

If successful, this method returns `201 Created` response code and [invitation](../resources/invitation.md) object in the response body.

## Example

### Example 1: Invite a guest user

#### Request

The following example shows a request to add and invite a guest user.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_invitation_post"
}-->
```http
POST https://graph.microsoft.com/beta/invitations
Content-type: application/json

{
  "invitedUserEmailAddress": "admin@fabrikam.com",
  "inviteRedirectUrl": "https://myapp.contoso.com"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-invitation-post-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-invitation-post-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-invitation-post-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-invitation-post-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-invitation-post-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-invitation-post-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-invitation-post-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.invitation"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#invitations/$entity",
    "id": "9071bfde-35e0-47d2-a582-d244ab1b4af6",
    "inviteRedeemUrl": "https://login.microsoftonline.com/redeem?rd=https%3a%2f%2finvitations.microsoft.com%2fredeem%2f%3ften...6ver%3d2.0",
    "invitedUserDisplayName": null,
    "invitedUserType": "Guest",
    "invitedUserEmailAddress": "admin@fabrikam.com",
    "sendInvitationMessage": false,
    "resetRedemption": false,
    "inviteRedirectUrl": "https://myapp.contoso.com",
    "status": "PendingAcceptance",
    "invitedUserMessageInfo": {
        "messageLanguage": null,
        "customizedMessageBody": null,
        "ccRecipients": [
            {
                "emailAddress": {
                    "name": null,
                    "address": null
                }
            }
        ]
    },
    "invitedUser": {
        "id": "cbb896f9-8306-49d0-b56b-b8e39cd28825",
        "userPrincipalName": "admin_fabrikam.com#EXT#@doc.onmicrosoft.com"
    }
}
```

### Example 2: Reset the redemption status of a guest user

#### Request

The following example shows a request to reset the redemption status of a guest user. The request changes the user's email address, but keeps their current user ID. Before running the request, you must add the new email address the **otherMails** property of the existing guest [user](../resources/user.md) object.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_invitation_resetredemption"
}-->
```http
POST https://graph.microsoft.com/beta/invitations
Content-type: application/json

{
    "invitedUserEmailAddress": "AdeleV@fabrikam.com",
    "inviteRedirectUrl": "https://myapp.contoso.com",
    "invitedUser": {
        "id": "264e6d50-eaec-461e-b187-873b1bcf855f"
    },
    "resetRedemption": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-invitation-resetredemption-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-invitation-resetredemption-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-invitation-resetredemption-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-invitation-resetredemption-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-invitation-resetredemption-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-invitation-resetredemption-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-invitation-resetredemption-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response. 
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.invitation"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#invitations/$entity",
    "id": "46d72876-dba6-4a05-b9ec-118faf16c4b7",
    "inviteRedeemUrl": "https://login.microsoftonline.com/redeem?rd=https%3a%2f%2finvitations.microsoft.com%2fredeem%2f%3fte...3d2.0",
    "invitedUserDisplayName": null,
    "invitedUserType": "Guest",
    "invitedUserEmailAddress": "AdeleV@fabrikam.com",
    "sendInvitationMessage": false,
    "resetRedemption": true,
    "inviteRedirectUrl": "https://myapp.contoso.com",
    "status": "PendingAcceptance",
    "invitedUserMessageInfo": {
        "messageLanguage": null,
        "customizedMessageBody": null,
        "ccRecipients": [
            {
                "emailAddress": {
                    "name": null,
                    "address": null
                }
            }
        ]
    },
    "invitedUser": {
        "id": "264e6d50-eaec-461e-b187-873b1bcf855f",
        "userPrincipalName": "AdeleV_fabrikam.com#EXT#@doc.onmicrosoft.com"
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79 
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Example",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
