---
title: "List actions (for an Azure authorization system)"
description: "List the azureAuthorizationSystemTypeAction objects and their properties."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
---

# List actions (for an Azure authorization system)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) objects and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "azureauthorizationsystem_list_actions" } -->
[!INCLUDE [permissions-table](../includes/permissions/azureauthorizationsystem-list-actions-permissions.md)]

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/actions
```

## Optional query parameters
This method supports the `$select`, `$filter`, `$count`, `$top`, and `$skipToken` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) objects in the response body.

## Examples

### Example 1: List all actions in the Azure authorization system

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_azureauthorizationsystemtypeaction"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/actions
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-azureauthorizationsystemtypeaction-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.azureAuthorizationSystemTypeAction)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/actions",
  "value": [
    {
      "id": "TWljcm9zb2Z0LlN0b3JhZ2UvY2hlY2tuYW1lYXZhaWxhYmlsaXR5L3JlYWQ=",
      "externalId": "Microsoft.Storage/checknameavailability/read",
      "resourceTypes": ["checknameavailability"],
      "severity": "normal",
      "actionType": "read",
      "service": {
        "id": "Microsoft.Storage"
      }
    },
    {
      "id": "TWljcm9zb2Z0LlN0b3JhZ2UvbG9jYXRpb25zL2RlbGV0ZVZpcnR1YWxOZXR3b3JrT3JTdWJuZXRzL2FjdGlvbg==",
      "externalId": "Microsoft.Storage/locations/deleteVirtualNetworkOrSubnets/action",
      "resourceTypes": ["locations"],
      "severity": "normal",
      "actionType": null,
      "service": {
        "id": "Microsoft.Storage"
      }
    },
    {
      "id": "TWljcm9zb2Z0LlN0b3JhZ2Uvb3BlcmF0aW9ucy9yZWFk",
      "externalId": "Microsoft.Storage/operations/read",
      "resourceTypes": ["operations"],
      "severity": "normal",
      "actionType": "read",
      "service": {
        "id": "Microsoft.Storage"
      }
    }
  ]
}
```

### Example 2: List actions for a service in the Azure authorization system

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_azureauthorizationsystemtypeaction2"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/actions?$filter=service/id eq 'Microsoft.Storage'
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-azureauthorizationsystemtypeaction2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.azureAuthorizationSystemTypeAction)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/microsoft.graph.azureAuthorizationSystem/actions?$filter=service/id eq 'Microsoft.Storage'",
  "value": [
    {
      "id": "TWljcm9zb2Z0LlN0b3JhZ2UvY2hlY2tuYW1lYXZhaWxhYmlsaXR5L3JlYWQ=",
      "externalId": "Microsoft.Storage/checknameavailability/read",
      "resourceTypes": ["checknameavailability"],
      "severity": "normal",
      "actionType": "read",
      "service": {
        "id": "Microsoft.Storage"
      }
    },
    {
      "id": "TWljcm9zb2Z0LlN0b3JhZ2UvbG9jYXRpb25zL2RlbGV0ZVZpcnR1YWxOZXR3b3JrT3JTdWJuZXRzL2FjdGlvbg==",
      "externalId": "Microsoft.Storage/locations/deleteVirtualNetworkOrSubnets/action",
      "resourceTypes": ["locations"],
      "severity": "normal",
      "actionType": null,
      "service": {
        "id": "Microsoft.Storage"
      }
    },
    {
      "id": "TWljcm9zb2Z0LlN0b3JhZ2Uvb3BlcmF0aW9ucy9yZWFk",
      "externalId": "Microsoft.Storage/operations/read",
      "resourceTypes": ["operations"],
      "severity": "normal",
      "actionType": "read",
      "service": {
        "id": "Microsoft.Storage"
      }
    }
  ]
}
```

