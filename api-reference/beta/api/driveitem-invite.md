---
author: spgraph-docs-team
description: "Send a sharing invitation for a driveItem."
ms.date: 09/16/2025
title: "driveItem: invite"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---
# driveItem: invite

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Send a sharing invitation for a [driveItem](../resources/driveitem.md). A sharing invitation provides permissions to the recipients and, optionally, sends them an email to notify them that the item was shared.

> [!IMPORTANT]
> * Permissions can’t be created or modified on the root **driveItem** of [drives](../resources/drive.md) with a **driveType** of `personal` (OneDrive for home).
> * _New_ guests can't be invited using app-only access. Existing guests can be invited using app-only requests.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_invite" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-invite-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-driveitem-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /drives/{drive-id}/items/{item-id}/invite
POST /groups/{group-id}/drive/items/{item-id}/invite
POST /me/drive/items/{item-id}/invite
POST /sites/{siteId}/drive/items/{itemId}/invite
POST /users/{userId}/drive/items/{itemId}/invite
```

## Request body

In the request body, provide a JSON object with the following parameters.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.inviteParameters", "scopes": "files.readwrite" } -->

```json
{
  "requireSignIn": false,
  "sendInvitation": false,
  "roles": [ "read | write"],
  "recipients": [
    { "@odata.type": "microsoft.graph.driveRecipient" },
    { "@odata.type": "microsoft.graph.driveRecipient" }
  ],
  "message": "string"
}
```

| Parameter | Type | Description |
|:---|:---|:---|
| recipients       | [driveRecipient](../resources/driverecipient.md) collection | A collection of recipients who receive access and the sharing invitation. |
| message          | String                                          | A plain text formatted message that is included in the sharing invitation. Maximum length 2,000 characters. |
| requireSignIn    | Boolean                                         | Specifies where the recipient of the invitation is required to sign-in to view the shared item.            |
| sendInvitation   | Boolean                                         | Specifies if an email or post is generated (`false`) or if the permission is recently created (`true`).            |
| roles            | String collection                              | Specifies the roles that are granted to the recipients of the sharing invitation. |
| expirationDateTime | DateTimeOffset                       | Specifies the **dateTime** after which the permission expires. For OneDrive for work or school and SharePoint, **expirationDateTime** is only applicable for **sharingLink** permissions. Available on OneDrive for work or school, SharePoint, and premium personal OneDrive accounts. |
| password           | String                         | The password set on the invite by the creator. Optional, and OneDrive for home only. |
| retainInheritedPermissions | Boolean                        | Optional. If `true` (default), any existing inherited permissions are retained on the shared item when sharing this item for the first time. If `false`, all existing permissions are removed when sharing for the first time. |

## Response

If successful, this method returns a `200 OK` response code and a collection of [permission](../resources/permission.md) objects in the response body.

For more information about how errors are returned, see [Error responses](/graph/errors).

### Partial success response

When inviting multiple recipients, it's possible for the notification to succeed for some and fail for others. In this case, the service returns a partial success response with a `207 Multi-Status` status code. When partial success is returned, the response for each failed recipient contains an **error** object with information about what went wrong and how to fix it. For more information, see [Example 2](#example-2-send-sharing-invitation-with-partial-success).

### Send invitation notification errors

The following table shows some other errors that your app might encounter within the nested **innererror** objects when sending notification fails. Apps aren't required to handle these errors.

| Code                           | Description                                                                          |
|:-------------------------------|:--------------------------------------------------------------------------------------
| accountVerificationRequired    | Account verification is required to unblock sending notifications. |
| hipCheckRequired               | Need to solve HIP (Host Intrusion Prevention) check to unblock sending notifications. |
| exchangeInvalidUser            | Current user's mailbox wasn't found. |
| exchangeOutOfMailboxQuota      | Out of quota. |
| exchangeMaxRecipients          | Exceeded maximum number of recipients that can be sent notifications at the same time. |

>**Note:** The service can add new error codes or stop returning old ones at any time.

## Examples

### Example 1: Send a sharing invitation

The following example shows how to send a sharing invitation to a user with the email address `robin@contoso.org`, including a message regarding a file under collaboration. The invitation grants Robin read-write access to the file.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "send-sharing-invite", "@odata.type": "microsoft.graph.inviteParameters", "scopes": "files.readwrite", "target": "action" } -->

```http
POST https://graph.microsoft.com/beta/me/drive/items/{item-id}/invite
Content-type: application/json

{
  "recipients": [
    {
      "email": "robin@contoso.org"
    }
  ],
  "message": "Here's the file that we're collaborating on.",
  "requireSignIn": true,
  "sendInvitation": true,
  "roles": [ "write" ],
  "password": "password123",
  "expirationDateTime": "2018-07-15T14:00:00.000Z"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/send-sharing-invite-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/send-sharing-invite-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/send-sharing-invite-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/send-sharing-invite-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/send-sharing-invite-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/send-sharing-invite-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/send-sharing-invite-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- { "blockType": "response", "@odata.type": "Collection(microsoft.graph.permission)", "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "@deprecated.GrantedTo": "GrantedTo has been deprecated. Refer to GrantedToV2",
      "grantedTo": {
        "user": {
          "displayName": "Robin Danielsen",
          "id": "42F177F1-22C0-4BE3-900D-4507125C5C20"
        }
      },
      "grantedToV2": {
        "user": {
          "id": "42F177F1-22C0-4BE3-900D-4507125C5C20",
          "displayName": "Robin Danielsen"
        },
        "siteUser": {
          "id": "1",
          "displayName": "Robin Danielsen",
          "loginName": "Robin Danielsen"
        }
      },
      "hasPassword": true,
      "id": "CCFC7CA3-7A19-4D57-8CEF-149DB9DDFA62",
      "invitation": {
        "email": "robin@contoso.com",
        "signInRequired": true
      },
      "roles": [ "write" ],
      "expirationDateTime": "2018-07-15T14:00:00.000Z"
    }
  ]
}
```

### Example 2: Send sharing invitation with partial success

The following example shows a request that partially succeeds.

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "send-sharing-invite-with-partial-success", "@odata.type": "microsoft.graph.inviteParameters", "scopes": "files.readwrite", "target": "action" } -->

```http
POST https://graph.microsoft.com/beta/me/drive/items/{item-id}/invite
Content-type: application/json

{
  "recipients": [
    {
      "email": "helga@contoso.com"
    },
    {
      "email": "robin@contoso.org"
    }
  ],
  "message": "Here's the file that we're collaborating on.",
  "requireSignIn": true,
  "sendInvitation": true,
  "roles": [ "write" ],
  "password": "password123",
  "expirationDateTime": "2018-07-15T14:00:00.000Z"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/send-sharing-invite-with-partial-success-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/send-sharing-invite-with-partial-success-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/send-sharing-invite-with-partial-success-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/send-sharing-invite-with-partial-success-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/send-sharing-invite-with-partial-success-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/send-sharing-invite-with-partial-success-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/send-sharing-invite-with-partial-success-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the partial response.

<!-- { "blockType": "response", "@odata.type": "Collection(microsoft.graph.permission)", "truncated": true } -->

```http
HTTP/1.1 207 Multi-Status
Content-type: application/json

{
  "value": [
    {
      "grantedTo": {
        "user": {
          "displayName": "Helga Hammeren",
          "id": "5D8CA5D0-FFF8-4A97-B0A6-8F5AEA339681"
        }
      },
      "id": "1EFG7CA3-7A19-4D57-8CEF-149DB9DDFA62",
      "invitation": {
        "email": "helga@contoso.com",
        "signInRequired": true
      },
      "roles": [ "write" ],
      "error": {
        "code":"notAllowed",
        "message":"Account verification needed to unblock sending emails.",
        "localizedMessage": "Kontobestätigung erforderlich, um das Senden von E-Mails zu entsperren.",
        "fixItUrl":"http://g.live.com/8SESkydrive/VerifyAccount",
        "innererror":{
          "code":"accountVerificationRequired"
        }
      }
    },
    {
      "grantedTo": {
        "user": {
          "displayName": "Robin Danielsen",
          "id": "42F177F1-22C0-4BE3-900D-4507125C5C20"
        }
      },
      "id": "CCFC7CA3-7A19-4D57-8CEF-149DB9DDFA62",
      "invitation": {
        "email": "robin@contoso.com",
        "signInRequired": true
      },
      "roles": [ "write" ],
      "expirationDateTime": "2018-07-15T14:00:00.000Z"
    }
  ]
}
```

## Related content

For a list of available roles, see [roles property values](../resources/permission.md#roles-property-values).

<!--
{
  "type": "#page.annotation",
  "description": "Add permissions to an item and optionally send a sharing notification.",
  "keywords": "retrieve,item,metadata",
  "section": "documentation",
  "tocPath": "Sharing/Add permissions",
  "suppressions": [
  ]
}
-->


