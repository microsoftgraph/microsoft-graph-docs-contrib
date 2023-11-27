---
title: "List actions (in a GCP authorization system)"
description: "List the gcpAuthorizationSystemTypeAction objects and their properties."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List actions (in a GCP authorization system)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

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
|Authorization|Bearer {token}. Required.|

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

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-gcpauthorizationsystemtypeaction-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

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

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-gcpauthorizationsystemtypeaction2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

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

