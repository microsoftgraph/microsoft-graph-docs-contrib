---
title: "Get shiftsRoleDefinition"
description: "Read the properties and relationships of a shiftsRoleDefinition object."
author: "galalalym"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 06/22/2024
---

# Get shiftsRoleDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [shiftsRoleDefinition](../resources/shiftsroledefinition.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "shiftsroledefinition-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/shiftsroledefinition-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /team/{teamId}/schedule/shiftsRoleDefinitions/{roleId}
```

## Path parameters
|Parameter|Type|Description|
|:---|:---|:---|
|teamId|string|Team ID to set the role definitions.|
|roleId|string|The affected role. Current supported values are `teamowner` and `scheduleowner`.|

### Supported values for roleId
|Name|Description|
|:---|:---|
|scheduleOwner|Sets definitions for a schedule owner.|
|teamOwner|Sets definitions for a team owner.|

## Optional query parameters

This method doesn't support OData query parameters to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| MS-APP-ACTS-AS (deprecated) | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. The `MS-APP-ACTS-AS` header is deprecated and no longer required with application tokens.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [shiftsRoleDefinition](../resources/shiftsroledefinition.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_shiftsroledefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/team/10c2c1cc-6384-48f6-aeba-ef7486344550/schedule/shiftsRoleDefinitions/scheduleowner
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.shiftsRoleDefinition"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "scheduleowner",
  "displayName": "Schedule owner",
  "description": "A person who creates and manages schedules for their teams in Shifts.",
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

