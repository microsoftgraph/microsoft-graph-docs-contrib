---
title: "protectionPolicyBase: activate"
description: "Activate a protection policy"
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 09/10/2024
---

# protectionPolicyBase: activate

Namespace: microsoft.graph

Activate a [protectionPolicyBase](../resources/protectionpolicybase.md).

Currently, only one active backup policy per underlying service is supported (that is, one for OneDrive accounts, one for SharePoint sites, and one for Exchange Online users). You can add or remove artifacts (sites or user accounts) to or from each active policy.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "protectionpolicybase_activate" } -->
[!INCLUDE [permissions-table](../includes/permissions/protectionpolicybase-activate-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/backupRestore/protectionPolicies/{protectionPolicyBaseId}/activate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `202 Accepted` response code and a [protectionPolicyBase](../resources/protectionpolicybase.md) object in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Example 1: Activate an inactive protection policy

The following example shows a request to activate an inactive protection policy.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "protectionpolicybase_activate_example_1"
}
-->

```http
POST https://graph.microsoft.com/v1.0/solutions/backupRestore/ProtectionPolicies/61633878-8321-4950-bfaf-ed285bdd1461/activate
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/protectionpolicybase-activate-example-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/protectionpolicybase-activate-example-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/protectionpolicybase-activate-example-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/protectionpolicybase-activate-example-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/protectionpolicybase-activate-example-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/protectionpolicybase-activate-example-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/protectionpolicybase-activate-example-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.protectionPolicyBase"
}
-->
```http
HTTP/1.1 202 Accepted
Content-Location: https://graph.microsoft.com/v1.0/solutions/backupRestore/protectionPolicies('61633878-8321-4950-bfaf-ed285bdd1461')

{
  "@odata.context": "/solutions/backupRestore/$metadata#ProtectionPolicies/$entity",
  "@odata.id": "/solutions/backupRestore/ProtectionPolicies(61633878-8321-4950-bfaf-ed285bdd1461)",
  "@odata.type": "#microsoft.graph.sharePointProtectionPolicy",
  "id": "61633878-8321-4950-bfaf-ed285bdd1461",
  "displayName": "SharePoint Protection Policy",
  "status": "updating",
  "createdBy": {
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
  "createdDateTime": "2015-06-19T12:01:03.45Z",
  "lastModifiedBy": {
    "application": {
      "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "displayName": "Microsoft Enhanced Restore"
    },
    "user": {
      "email": "rian@contoso.com",
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "displayName": "rian"
    }
  },
  "lastModifiedDateTime": "2015-06-19T12:01:03.45Z",
  "retentionSettings": [
    {
      "interval": "R/PT10M",
      "period": "P2W"
    },
    {
      "interval": "R/P1W",
      "period": "P1Y"
    }
  ]
}
```

### Example 2: Activate an active protection policy

The following example shows a request to activate a protection policy that's already active. This request results in an error.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "protectionpolicybase_activate_example_2"
}
-->

```http
POST https://graph.microsoft.com/v1.0/solutions/backupRestore/protectionPolicies/61633878-8321-4950-bfaf-ed285bdd1461/activate
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/protectionpolicybase-activate-example-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/protectionpolicybase-activate-example-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/protectionpolicybase-activate-example-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/protectionpolicybase-activate-example-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/protectionpolicybase-activate-example-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/protectionpolicybase-activate-example-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/protectionpolicybase-activate-example-2-python-snippets.md)]
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
HTTP/1.1 400 Bad Request
Content-Location: https://graph.microsoft.com/v1.0/solutions/backupRestore/protectionPolicies/61633878-8321-4950-bfaf-ed285bdd1461

{
  "error": {
    "code": "invalidStateForActivation",
    "message": "Policy in already active state, which is invalid for activation. Policy must be Inactive or ActiveWithErrors state.",
    "innerError": {
      "date": "2023-03-03T07:15:31",
      "request-id": "7e921b55-8af4-41f5-881d-d425af822be0",
      "client-request-id": "77d27e8a-f18e-ce3a-42c9-f8a87fc00126"
    }
  }
}
```
