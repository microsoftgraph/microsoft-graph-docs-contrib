---
title: "List b2bManagementPolicy objects"
description: "Get a list of the b2bManagementPolicy objects and their properties."
author: "akshukla"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# List b2bManagementPolicy objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [b2bManagementPolicy](../resources/b2bmanagementpolicy.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "policyroot-list-b2bmanagementpolicies-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/policyroot-list-b2bmanagementpolicies-permissions.md)]

[!INCLUDE [rbac-b2bManagementPolicy-apis-read](../includes/rbac-for-apis/rbac-b2bmanagementpolicy-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/b2bManagementPolicies
```

## Optional query parameters

None.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [b2bManagementPolicy](../resources/b2bmanagementpolicy.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_b2bmanagementpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/b2bManagementPolicies
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.b2bManagementPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.b2bManagementPolicy",
      "id": "f596ef0d-42f9-0359-1aaa-12d02b38802a",
      "deletedDateTime": null,
      "description": "Policy used for B2B features",
      "displayName": "Policy1",
      "definition": [
        "{'B2BManagementPolicy':{'Version':1}}"
      ],
      "isOrganizationDefault": "true"
    }
  ]
}
```

