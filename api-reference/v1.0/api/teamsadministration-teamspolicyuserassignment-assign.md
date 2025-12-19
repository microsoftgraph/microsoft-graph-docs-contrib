---
title: "teamsPolicyUserAssignment: assign"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 12/19/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# teamsPolicyUserAssignment: assign

Namespace: microsoft.graph.teamsAdministration



**TODO: Add Description**

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "teamsadministration-teamspolicyuserassignment-assign-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/teamsadministration-teamspolicyuserassignment-assign-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/teams/policy/userAssignments/assign
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|value|[microsoft.graph.teamsAdministration.teamsPolicyUserAssignment](../resources/teamsadministration-teamspolicyuserassignment.md) collection|**TODO: Add Description**|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "teamspolicyuserassignmentthis.assign"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/admin/teams/policy/userAssignments/assign
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamsAdministration.teamsPolicyUserAssignment",
      "id": "String (identifier)",
      "userId": "String",
      "policyType": "String",
      "policyId": "String"
    }
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

