---
title: "protectionUnitBase: cancelOffboard"
description: "Cancel the offboarding of a protectionUnitBase."
author: "haputta"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 08/26/2024
---
# protectionUnitBase: cancelOffboard

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cancel the offboarding of a [protectionUnitBase](../resources/protectionunitbase.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "protectionunitbase_canceloffboard" } -->
[!INCLUDE [permissions-table](../includes/permissions/protectionunitbase-canceloffboard-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/backupRestore/protectionUnits/{protectionUnitBaseId}/cancelOffboard
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [protectionUnitBase](../resources/protectionunitbase.md) object in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Example 1: Cancel offboarding of a protection unit in the billingStopped flow

The following example shows how to cancel the offboarding of a protection unit in the *billingStopped* flow.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "protectionunitbase_cancelOffboard_example1"
}
-->
```http
POST https://graph.microsoft.com/beta/solutions/backupRestore/protectionUnits/89014d8c-71fe-4d00-a01a-31850bc5b32c/cancelOffboard
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/protectionunitbase-canceloffboard-example1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/protectionunitbase-canceloffboard-example1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/protectionunitbase-canceloffboard-example1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/protectionunitbase-canceloffboard-example1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/protectionunitbase-canceloffboard-example1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/protectionunitbase-canceloffboard-example1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/protectionunitbase-canceloffboard-example1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.protectionUnitBase"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "89014d8c-71fe-4d00-a01a-31850bc5b32c",
  "siteId": "contoso-jpn.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e900900",
  "policyId": "845457dc-4bb2-4815-bef3-8628ebd1952e",
  "status": "cancelOffboardRequested",
  "protectionSources": "manual",
  "createdBy": {
    "application": {
      "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "displayName": "Microsoft Enhanced Restore"
    },
    "user": {
      "email": "rian@contoso.com",
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "displayName": "Rian"
    }
  },
  "createdDateTime": "2015-06-19T12:01:03.45Z",
  "lastModifiedBy": {
    "application": {
      "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "displayName": "Microsoft Enhanced Restore"
    },
    "user": {
      "email": "ryan@contoso.com",
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "displayName": "Ryan"
    }
  },
  "lastModifiedDateTime": "2015-07-19T12:01:03.45Z",
  "offboardRequestedDateTime": "2015-07-19T12:01:03.45Z"
}
```

### Example 2: Cancel offboarding of a protection unit that isn't in the offboarding flow

The following example shows how to cancel the offboarding of a protection unit that isn't in the offboarding flow.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "protectionunitbase_canceloffboard_example2"
}
-->
```http
POST https://graph.microsoft.com/beta/solutions/backupRestore/protectionUnits/89014d8c-71fe-4d00-a01a-31850bc5b32c/cancelOffboard
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/protectionunitbase-canceloffboard-example2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/protectionunitbase-canceloffboard-example2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/protectionunitbase-canceloffboard-example2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/protectionunitbase-canceloffboard-example2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/protectionunitbase-canceloffboard-example2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/protectionunitbase-canceloffboard-example2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/protectionunitbase-canceloffboard-example2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.publicError"
}
-->
```http
HTTP/1.1 403 Operation Not Allowed
Content-Type: application/json

{
  "error": {
    "code": "OperationNotAllowed",
    "message": "Offboarding cannot be cancelled as it not in valid state.",
    "details": []
  }
}
```
