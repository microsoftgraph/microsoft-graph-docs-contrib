---
title: "Create invitation"
description: "Create a new invitation. The invitation adds an external user to the organization."
ms.localizationpriority: high
author: "ppolkadots"
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create invitation

Namespace: microsoft.graph

Use this API to create a new [invitation](../resources/invitation.md). Invitation adds an external user to the organization.

When creating a new invitation, you have several options available:

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
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body

In the request body, supply a JSON representation of an [invitation](../resources/invitation.md) object.

The following table lists the parameters that are required when you create an invitation.

| Parameter | Type | Description|
|:---------------|:--------|:----------|
|invitedUserEmailAddress |string | The email address of the user you're inviting.|
|inviteRedirectUrl |string |The URL that the user will be redirected to after redemption.|

## Response

If successful, this method returns `201 Created` response code and an [invitation](../resources/invitation.md) object in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_invitation_post"
}-->
```http
POST https://graph.microsoft.com/v1.0/invitations
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
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#invitations/$entity",
  "id": "7b92124c-9fa9-406f-8b8e-225df8376ba9",
  "inviteRedeemUrl": "https://invitations.microsoft.com/redeem/?tenant=04dcc6ab-388a-4559-b527-fbec656300ea&user=7b92124c-9fa9-406f-8b8e-225df8376ba9&ticket=VV9dmiExBsfRIVNFjb9ITj9VXAd07Ypv4gTg%2f8PiuJs%3d&lc=1033&ver=2.0",
  "invitedUserDisplayName": "Fabrikam Admin",
  "invitedUserEmailAddress": "admin@fabrikam.com",
  "resetRedemption": false,
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
  "inviteRedirectUrl": "https://myapp.contoso.com",
  "status": "Completed",
  "invitedUser": { "id": "243b1de4-ad9f-421c-a933-d55305fb165d" }
}
```

<!-- {
  "type": "#page.annotation",
  "suppressions": [
  ]
}-->
