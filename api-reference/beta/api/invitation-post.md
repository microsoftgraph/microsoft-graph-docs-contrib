---
title: "Create invitation"
description: "Create a new invitation. The invitation adds an external user to the organization."
ms.localizationpriority: medium
author: "ppolkadots"
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create invitation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [invitation](../resources/invitation.md). The invitation adds an external user to the organization.

The following options are available for creating an invitation:

1. On invitation creation, Microsoft Graph can automatically send an invitation email directly to the invited user, or your app can use the **inviteRedeemUrl** returned in the response to craft your own invitation (through your communication mechanism of choice) to the invited user. If you decide to have Microsoft Graph send an invitation email automatically, you can specify the content and language of the email by using [invitedUserMessageInfo](../resources/invitedusermessageinfo.md).
2. When the user is invited, a user entity (of **userType** `Guest`) is created and can be used to control access to resources. The invited user has to go through the redemption process to access any resources they have been invited to.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "invitation_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/invitation-post-permissions.md)]

> [!IMPORTANT]
> Application permissions (app-only) do not work if B2B invitations are disabled on the tenant or if B2B invitations are restricted to administrators.

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

### Request

The following example shows a request.

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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-invitation-post-cli-snippets.md)]
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

### Response

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
    "inviteRedeemUrl": "https://login.microsoftonline.com/redeem?rd=https%3a%2f%2finvitations.microsoft.com%2fredeem%2f%3ftenant%3d69997834-fa40-45da-xxxx-382c3bdc66c3%26user%3d9071bfde-35e0-47d2-a582-d244ab1b4af6%26ticket%3dwCFIFW%25252frzl2A%25252fpZFZk5fCLJprpDxtcjR8s%25252fo1QZA0yQ%25253d%26ver%3d2.0",
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
        "id": "cbb896f9-8306-49d0-b56b-b8e39cd28825"
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
