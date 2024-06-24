---
title: "List gcpAuthorizationSystems"
description: "Get a list of the gcpAuthorizationSystem objects and their properties."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
---

# List gcpAuthorizationSystems
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md) objects and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "gcpauthorizationsystem_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/gcpauthorizationsystem-list-permissions.md)]

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/microsoft.graph.gcpAuthorizationSystem
```

## Optional query parameters
This method supports the `$filter` and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_gcpauthorizationsystem"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/microsoft.graph.gcpAuthorizationSystem
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-gcpauthorizationsystem-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-gcpauthorizationsystem-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-gcpauthorizationsystem-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-gcpauthorizationsystem-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-gcpauthorizationsystem-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-gcpauthorizationsystem-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-gcpauthorizationsystem-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-gcpauthorizationsystem-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.gcpAuthorizationSystem)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/microsoft.graph.gcpAuthorizationSystem",
  "value": [
    {
      "id": "Y2stY29tcGxpYW5jZS1h",
      "authorizationSystemId": "ck-compliance",
      "authorizationSystemName": "ck-compliance-test",
      "authorizationSystemType": "GCP",
      "dataCollectionInfo@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems('Y2stY29tcGxpYW5jZS1h')/microsoft.graph.gcpAuthorizationSystem/dataCollectionInfo/$entity",
      "dataCollectionInfo": {
        "entitlements": {
          "@odata.type": "microsoft.graph.noEntitlementsDataCollection"
        }
      }
    }
  ]
}
```

