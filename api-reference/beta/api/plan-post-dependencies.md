---
title: "Create dependency"
description: "Create a new dependency object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Create dependency

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new dependency object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "plan-post-dependencies-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/plan-post-dependencies-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/planner/plans_v2/{planId}/dependencies
POST /users/{usersId}/planner/plans_v2/{planId}/dependencies
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [dependency](../resources/dependency.md) object.

You can specify the following properties when creating a **dependency**.

|Property|Type|Description|
|:---|:---|:---|
|sourceItemId|String|ID of the source item in the dependency. Required.|
|targetItemId|String|ID of the target item in the dependency. Required.|
|constraint|dependencyType|The kind of dependency constraint between the source and target items. The possible values are: `sourceFinishDrivesTargetStart`, `sourceStartDrivesTargetStart`, `sourceFinishDrivesTargetFinish`, `targetStartDrivesSourceFinish`, `unknownFutureValue`. Required.|
|archivalInfo|[plannerArchivalInfo](../resources/plannerarchivalinfo.md)|Information about whether the entity is archived, and when it was archived. Optional.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [dependency](../resources/dependency.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_dependency_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/dependencies
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.dependency",
  "sourceItemId": "5a3d7c9e-2f61-4b8a-9d42-6c1e8f3b9a52",
  "targetItemId": "8b4d6f2a-3c91-4e7d-9a52-1f6c8b3d9e24",
  "constraint": "sourceFinishDrivesTargetStart",
  "archivalInfo": {
    "@odata.type": "microsoft.graph.plannerArchivalInfo"
  },
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.dependency"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.dependency",
  "id": "97f05daa-0479-6fa3-cb09-28d363132000",
  "sourceItemId": "String",
  "targetItemId": "String",
  "constraint": "String",
  "creationInfo": {
    "@odata.type": "microsoft.graph.creationInfo"
  },
  "archivalInfo": {
    "@odata.type": "microsoft.graph.plannerArchivalInfo"
  },
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
```

