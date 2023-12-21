---
title: "Set shiftsRoleDefinition"
description: "Create/Update a new shiftsRoleDefinition object."
author: "galalalym"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Set shiftsRoleDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Sets [shiftsRoleDefinition](../resources/shiftsroledefinition.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored" } -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|SchedulePermissions.ReadWrite.All|Schedule.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|SchedulePermissions.ReadWrite.All|Schedule.ReadWrite.All|

>**Note:** Only tenant admins can access this endpoint.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /team/{teamId}/schedule/shiftsRoleDefinitions/{roleId}
```

## Path Parameters
|Parameter|Type|Description|
|:---|:---|:---|
|teamId|string|Team Id to set the role definitions.|
|roleId|string|The affected role. Current supported values are `teamowner` and `scheduleowner`|

### Supported values for roleId
|Name|Description|
|:---|:---|
|scheduleOwner|Sets definitions for a schedule owner.|
|teamOwner|Sets definitions for a team owner.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [shiftsRoleDefinition](../resources/shiftsroledefinition.md) object.

You can specify the following properties when creating/updating a **shiftsRoleDefinition**.

|Property|Type|Description|
|:---|:---|:---|
|shiftsRolePermissions|[microsoft.graph.shiftsRolePermission](../resources/shiftsrolepermission.md) collection|Contains the definition for role permissions within a role. Required.|



## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Example 1: Set permissions for schedule owner

#### Request

The following example shows a request enabling the modification of scheduling groups and time off reasons by schedule owners.
<!-- {
  "blockType": "request",
  "name": "patch-shiftsRoleDefinitions-example"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/team/10c2c1cc-6384-48f6-aeba-ef7486344550/schedule/shiftsRoleDefinitions/scheduleowner
Content-Type: application/json

{
  "shiftsRolePermissions": [
    {
      "allowedResourceActions": [
        "CanModifySchedulingGroups",
        "CanModifyTimeOffReasons"
      ]
    }
  ]
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": false
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Disable all permissions for schedule owner

#### Request

The following example shows a request disabling all permissions by passing an empty collection as the value for `allowedResourceActions`.
<!-- {
  "blockType": "request",
  "name": "patch-shiftsRoleDefinitions-example2"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/team/10c2c1cc-6384-48f6-aeba-ef7486344550/schedule/shiftsRoleDefinitions/scheduleowner
Content-Type: application/json

{
  "shiftsRolePermissions": [
    {
      "allowedResourceActions": []
    }
  ]
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": false
}
-->
``` http
HTTP/1.1 204 No Content
```