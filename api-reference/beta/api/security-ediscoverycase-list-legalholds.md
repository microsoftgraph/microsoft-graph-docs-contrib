---
title: "List ediscoveryHoldPolicies"
description: "Get a list of the ediscoveryHoldPolicy objects and their properties."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# List ediscoveryHoldPolicies
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoverycase_list_legalholds" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverycase-list-legalholds-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/cases/ediscoveryCases/{ediscoveryCaseId}/legalHolds
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

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md) objects in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_ediscoveryholdpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/legalHolds
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-ediscoveryholdpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-ediscoveryholdpolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-ediscoveryholdpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-ediscoveryholdpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-ediscoveryholdpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-ediscoveryholdpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-ediscoveryholdpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-ediscoveryholdpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.ediscoveryHoldPolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/legalHolds",
    "@odata.count": 2,
    "value": [
        {
            "isEnabled": false,
            "errors": [],
            "contentQuery": "",
            "description": null,
            "createdDateTime": "2022-05-23T01:09:53Z",
            "lastModifiedDateTime": "2022-05-23T02:36:26Z",
            "status": "pending",
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
        },
        {
            "isEnabled": false,
            "errors": [],
            "contentQuery": "",
            "description": null,
            "createdDateTime": "2022-05-23T02:09:27Z",
            "lastModifiedDateTime": "2022-05-23T02:41:26Z",
            "status": "pending",
            "id": "ff7e8841-b1ac-41f0-87c5-fa00da045ae0",
            "displayName": "NCDSHold-b0073e4e-4184-41c6-9eb7-8c8cc3e2288b",
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
    ]
}
```

