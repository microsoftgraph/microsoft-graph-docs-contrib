---
title: "Update cloudpc unifiedRoleAssignmentMultiple"
description: "Update a unifiedRoleAssignmentMultiple object."
localization_priority: Normal
author: "jiajyang"
ms.prod: "cloud-pc"
doc_type: "apiPageType"
---

# Update cloudpc unifiedRoleAssignmentMultiple

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an existing [unifiedRoleAssignmentMultiple](../resources/unifiedroleassignmentmultiple.md) object.
[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]
## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:--------------- |:------------------------------------------- |
| Delegated (work or school account) |RoleManagement.ReadWrite.CloudPC, CloudPC.ReadWrite.All|
| Delegated (personal Microsoft account) | Not supported. |
| Application | RoleManagement.ReadWrite.CloudPC, CloudPC.ReadWrite.All|

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /roleManagement/cloudPC/roleAssignments/id
```

## Request headers

| Name | Description |
|:---- |:----------- |
| Authorization | Bearer {token}. Required. |
| Content-type | application/json. Required. |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

## Response

If successful, this method returns a `200 OK` response code and an updated [unifiedAssignmentMultiple](../resources/unifiedroleassignmentmultiple.md) object in the response body.

## Example

### Request

<!-- {
  "blockType": "request",
  "name": "update_unifiedroleassignmentmultiple_from_rbacapplication"
}-->

```http
PATCH https://graph.microsoft.com/beta/roleManagement/deviceManagement/roleAssignments/dbe9d288-fd87-41f4-b33d-b498ed207096
Content-type: application/json

{ 
    "displayName": "NewName",
    "description": ""
}
```


### Response

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignmentMultiple"
} -->

```http
HTTP/1.1 200 OK
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/cloudPC/roleAssignments/$entity",
    "id": "dbe9d288-fd87-41f4-b33d-b498ed207096",
    "description": null,
    "displayName": "My test role assignment 1",
    "roleDefinitionId": "b5c08161-a7af-481c-ace2-a20a69a48fb1",
    "principalIds": [
        "0aeec2c1-fee7-4e02-b534-6f920d25b300",
        "2d5386a7-732f-44db-9cf8-f82dd2a1c0e0"
    ],
    "directoryScopeIds": [
        "/"
    ],
    "appScopeIds": []
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update unifiedRoleAssignmentMultiple",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


