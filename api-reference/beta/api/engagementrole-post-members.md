---
title: "Create engagementRoleMember"
description: "Create a new engagementRoleMember object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 03/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Create engagementRoleMember

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new engagementRoleMember object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "engagementrole-post-members-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/engagementrole-post-members-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/employeeExperience/assignedRoles/{engagementRoleId}/members
POST /users/{usersId}/employeeExperience/assignedRoles/{engagementRoleId}/members
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [engagementRoleMember](../resources/engagementrolemember.md) object.

You can specify the following properties when creating an **engagementRoleMember**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|userId|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and an [engagementRoleMember](../resources/engagementrolemember.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_engagementrolemember_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/employeeExperience/assignedRoles/{engagementRoleId}/members
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.engagementRoleMember",
  "userId": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.engagementRoleMember"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.engagementRoleMember",
  "id": "a40473a5-0fb4-a250-e029-f6fe33d07733",
  "userId": "String",
  "createdDateTime": "String (timestamp)"
}
```

