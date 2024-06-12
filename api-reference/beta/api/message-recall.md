---
title: "message: recall"
description: "Recall a message which is in the specified user's mailbox Sent Items folder."
author: "kahua"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# message: recall

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Recall a message which is in the specified user's mailbox Sent Items folder.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "message-move-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/message-recall-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/mailFolders/sentItems/messages/{id}/recall
POST /users/{id | userPrincipalName}/mailFolders/sentItems/messages/{id}/recall
```

## Request headers

| Header | Value |
|:-------|:------|
| Authorization | `Bearer {token}`. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `202 Accepted` response code and a string contains server information in the response body.

If the id is invalid, this method returns a `400 Bad request` and the detailed error information in the response body.

## Examples

Here is an example of how to call this API.

### Request

The following request recall the specified message which is in the specified user's mailbox Sent Items folder.
> **Note:** The id here is shortened for readability.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["AAMkADhAAATs28OAAA="],
  "name": "message_recall"
}-->

```http
POST https://graph.microsoft.com/beta/me/mailFolders/sentItems/messages/AAMkADhAAATs28OAAA=/recall
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/message-move-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/message-move-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/message-move-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/message-move-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/message-move-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/message-move-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/message-move-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/message-move-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

``` http
HTTP/1.1 202 Accepted
Content-Type: application/json
{
  "Successfully submitted recall request to Hub server LV8PR00MB1800.NAMPRD00.PROD.OUTLOOK.COM, MessageId is CSRUBSZRRANU4.HEXMGAAG0OPH2@dm6pr00mb0830."
}
```

