---
title: "List operationalInsightsConnections"
description: "Get a list of the operationalInsightsConnection objects and their properties."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: apiPageType
ms.date: 08/31/2024
---

# List operationalInsightsConnections
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [operationalInsightsConnection](../resources/windowsupdates-operationalinsightsconnection.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "adminwindowsupdates_list_resourceconnections_operationalinsightsconnection" } -->
[!INCLUDE [permissions-table](../includes/permissions/adminwindowsupdates-list-resourceconnections-operationalinsightsconnection-permissions.md)]

[!INCLUDE [rbac-windows-updates-apis](../includes/rbac-for-apis/rbac-windows-updates-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/resourceConnections/microsoft.graph.windowsUpdates.operationalInsightsConnection
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

If successful, this method returns a `200 OK` response code and a collection of [operationalInsightsConnection](../resources/windowsupdates-operationalinsightsconnection.md) objects in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_operationalinsightsconnection"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/resourceConnections/microsoft.graph.windowsUpdates.operationalInsightsConnection
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-operationalinsightsconnection-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-operationalinsightsconnection-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-operationalinsightsconnection-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-operationalinsightsconnection-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-operationalinsightsconnection-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-operationalinsightsconnection-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-operationalinsightsconnection-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-operationalinsightsconnection-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.operationalInsightsConnection",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.operationalInsightsConnection",
      "id": "fbb71b85-4173-0bf6-d2bc-ee7921b80cb0",
      "state": "connected",
      "azureSubscriptionId": "322ec614-e9c2-4cd5-a55c-5711fdecf02e",
      "azureResourceGroupName": "target-resource-group",
      "workspaceName": "my-workspace"
    }
  ]
}
```

