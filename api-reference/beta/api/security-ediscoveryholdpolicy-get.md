---
title: "Get ediscoveryHoldPolicy"
description: "Read the properties and relationships of an ediscoveryHoldPolicy object."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: "apiPageType"
ms.date: 06/11/2024
---

# Get ediscoveryHoldPolicy
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoveryholdpolicy_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoveryholdpolicy-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/cases/ediscoveryCases/{ediscoveryCaseId}/legalHolds/{ediscoveryHoldPolicyId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) object in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_ediscoveryholdpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/legalholds/783c3ea4-d474-4051-9c13-08707ce8c8b6
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-ediscoveryholdpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-ediscoveryholdpolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-ediscoveryholdpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-ediscoveryholdpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-ediscoveryholdpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-ediscoveryholdpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-ediscoveryholdpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-ediscoveryholdpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.ediscoveryHoldPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/legalHolds/$entity",
    "isEnabled": true,
    "errors": [],
    "contentQuery": "does api fetch query?",
    "description": "does api fetch description?",
    "createdDateTime": "2022-05-23T01:09:53.497Z",
    "lastModifiedDateTime": "2022-05-25T23:15:04.317Z",
    "status": "success",
    "id": "783c3ea4-d474-4051-9c13-08707ce8c8b6",
    "displayName": "CustodianHold-b0073e4e-4184-41c6-9eb7-8c8cc3e2288b",
    "createdBy": {
        "application": null,
        "user": {
            "id": "MOD Administrator",
            "displayName": null
        }
    },
    "lastModifiedBy": {
        "application": null,
        "user": {
            "id": "MOD Administrator",
            "displayName": null
        }
    }
}
```
