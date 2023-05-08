---
title: "Update unifiedRoleManagementAlert"
description: "Dismiss a unifiedRoleManagementAlert object by setting the isActive property to false."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Update unifiedRoleManagementAlert
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Dismiss a [unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) object by setting the **isActive** property to `false`.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementAlert.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagementAlert.ReadWrite.Directory|

[!INCLUDE [rbac-pim-alerts-apis](../includes/rbac-for-apis/rbac-pim-alerts-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/roleManagementAlerts/alerts/{unifiedRoleManagementAlertId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|isActive|Boolean|`false` by default; `true` if the alert is active. Set to `false `to dismiss the alert. Required.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Dismiss an alert by specifying the alert id and setting the isActive to false.

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_unifiedrolemanagementalert"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_67b47f38-0f0b-4e62-a3be-859140c2061f_StaleSignInAlert
Content-Type: application/json

{
  "isActive": false
}
```

#### Response
The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

