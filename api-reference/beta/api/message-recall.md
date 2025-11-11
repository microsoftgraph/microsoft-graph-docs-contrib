---
title: "message: recall"
description: "Recall a message in the specified user's mailbox Sent Items folder."
author: "kahua"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 06/24/2024
---

# message: recall

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Recall a message in the specified user's mailbox Sent Items folder.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "message_recall" } -->
[!INCLUDE [permissions-table](../includes/permissions/message-recall-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /me/mailFolders/sentitems/messages/{id}/recall
POST /users/{id | userPrincipalName}/mailFolders/sentitems/messages/{id}/recall
```

## Request headers

| Header | Value |
|:-------|:------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `202 Accepted` response code and a string that contains server information in the response body.

If the ID is invalid, this method returns a `400 Bad request` and the detailed error information in the response body.

## Example

The following example shows how to call this API.

### Request

The following request recalls the specified message in the specified user's mailbox sent items folder.
> **Note:** The ID here is shortened for readability.

```http
POST https://graph.microsoft.com/beta/me/mailFolders/sentitems/messages/AAMkADhAAATs28OAAA=/recall
```

### Response

The following example shows the response.

```http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
  "Successfully submitted recall request to Hub server LV8PR00MB1800.NAMPRD00.PROD.OUTLOOK.COM, MessageId is CSRUBSZRRANU4.HEXMGAAG0OPH2@dm6pr00mb0830."
}
```

