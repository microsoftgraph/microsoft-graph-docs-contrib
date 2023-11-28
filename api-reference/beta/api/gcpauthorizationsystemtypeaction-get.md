---
title: "Get gcpAuthorizationSystemTypeAction"
description: "Read the properties and relationships of a gcpAuthorizationSystemTypeAction object."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get gcpAuthorizationSystemTypeAction
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) object.

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
GET /external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/actions/{gcpAuthorizationSystemTypeActionId}
GET /external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/actions(externalId='{externalId}')
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_gcpauthorizationsystemtypeaction"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/actions/Y29tcHV0ZS5hZGRyZXNzZXMuY3JlYXRl
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-gcpauthorizationsystemtypeaction-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-gcpauthorizationsystemtypeaction-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.gcpAuthorizationSystemTypeAction"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/actions/Y29tcHV0ZS5hZGRyZXNzZXMuY3JlYXRl",
  "value": [
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

