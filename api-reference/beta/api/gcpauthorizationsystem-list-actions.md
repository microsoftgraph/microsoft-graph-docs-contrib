---
title: "List actions (in a GCP authorization system)"
description: "List the gcpAuthorizationSystemTypeAction objects and their properties."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
ms.date: 04/18/2024
---

# List actions (in a GCP authorization system)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [permissions-management-retirement-note](../../includes/permissions-management-retirement-note.md)]

List the [gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) objects and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "gcpauthorizationsystem_list_actions" } -->
[!INCLUDE [permissions-table](../includes/permissions/gcpauthorizationsystem-list-actions-permissions.md)]

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/actions
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

If successful, this method returns a `200 OK` response code and a collection of [gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) objects in the response body.

## Examples

### Example 1: List actions in a GCP authorization system

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_gcpauthorizationsystemtypeaction"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/actions
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-gcpauthorizationsystemtypeaction-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.gcpAuthorizationSystemTypeAction)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/actions",
  "value": [
    {
      "id": "Y29tcHV0ZS5hY2NlbGVyYXRvclR5cGVzLmdldA==",
      "externalId": "compute.acceleratorTypes.get",
      "resourceTypes": ["applications"],
      "severity": "normal",
      "actionType": "read",
      "service": {
        "id": "compute"
      }
    },
    {
      "id": "Y29tcHV0ZS5hY2NlbGVyYXRvclR5cGVzLmxpc3Q=",
      "externalId": "compute.acceleratorTypes.list",
      "resourceTypes": ["applications"],
      "severity": "normal",
      "actionType": "read",
      "service": {
        "id": "compute"
      }
    },
    {
      "id": "Y29tcHV0ZS5hZGRyZXNzZXMuY3JlYXRl",
      "externalId": "compute.addresses.create",
      "resourceTypes": ["addresses"],
      "severity": "high",
      "actionType": null,
      "service": {
        "id": "compute"
      }
    }
  ]
}
```

### Example 2: List actions for a service in a GCP authorization system

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_gcpauthorizationsystemtypeaction2"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/actions?$filter=service/id eq 'compute'
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-gcpauthorizationsystemtypeaction2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.gcpAuthorizationSystemTypeAction)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/actions?$filter=service/id eq 'compute'",
  "value": [
    {
      "id": "Y29tcHV0ZS5hY2NlbGVyYXRvclR5cGVzLmdldA==",
      "externalId": "compute.acceleratorTypes.get",
      "resourceTypes": ["applications"],
      "severity": "normal",
      "actionType": "read",
      "service": {
        "id": "compute"
      }
    },
    {
      "id": "Y29tcHV0ZS5hY2NlbGVyYXRvclR5cGVzLmxpc3Q=",
      "externalId": "compute.acceleratorTypes.list",
      "resourceTypes": ["applications"],
      "severity": "normal",
      "actionType": "read",
      "service": {
        "id": "compute"
      }
    },
    {
      "id": "Y29tcHV0ZS5hZGRyZXNzZXMuY3JlYXRl",
      "externalId": "compute.addresses.create",
      "resourceTypes": ["addresses"],
      "severity": "high",
      "actionType": null,
      "service": {
        "id": "compute"
      }
    }
  ]
}
```


