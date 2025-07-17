---
title: "Get gcpAuthorizationSystemTypeAction"
description: "Read the properties and relationships of a gcpAuthorizationSystemTypeAction object."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
ms.date: 04/18/2024
---

# Get gcpAuthorizationSystemTypeAction
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [permissions-management-retirement-note](../../includes/permissions-management-retirement-note.md)]

Read the properties and relationships of a [gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "gcpauthorizationsystemtypeaction_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/gcpauthorizationsystemtypeaction-get-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

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


