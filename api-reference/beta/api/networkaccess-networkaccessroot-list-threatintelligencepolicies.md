---
title: "List threatIntelligencePolicy objects"
description: "Get a list of the threatIntelligencePolicy objects and their properties."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# List threatIntelligencePolicy objects

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_networkaccessroot_list_threatintelligencepolicies" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-networkaccessroot-list-threatintelligencepolicies-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/threatIntelligencePolicies
```

## Optional query parameters

This method supports the `$select`, `$top`, `$expand`, and `$filter` OData query parameters to help customize the response.  For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_threatintelligencepolicy"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/networkAccess/threatIntelligencePolicies
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-threatintelligencepolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-threatintelligencepolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-threatintelligencepolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-threatintelligencepolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-threatintelligencepolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-threatintelligencepolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-threatintelligencepolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.threatIntelligencePolicy"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.networkaccess.threatIntelligencePolicy",
      "id": "a8352c78-90c6-4edd-aaca-9dc4292e7750",
      "name": "Threat Intel Policy",
      "description": "",
      "version": "1.0.0",
      "lastModifiedDateTime": "2025-06-18T17:34:25.8207682Z",
      "settings": {
        "defaultAction": "allow"
      }
    },
    {
      "@odata.type": "#microsoft.graph.networkaccess.threatIntelligencePolicy",
      "id": "b9463d89-a1d7-5fee-badb-8ed5803e8861",
      "name": "Threat Intel Policy 2",
      "description": "",
      "version": "1.0.0",
      "lastModifiedDateTime": "2025-06-17T14:22:31.5643891Z",
      "settings": {
        "defaultAction": "allow"
      }
    }
  ]
}
```

