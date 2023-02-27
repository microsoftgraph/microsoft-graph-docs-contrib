---
title: "Update unifiedRoleManagementAlertConfiguration"
description: "Update the properties of an unifiedRoleManagementAlertConfiguration object."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Update unifiedRoleManagementAlertConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementAlert.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagementAlert.ReadWrite.Directory|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/roleManagementAlerts/alertConfigurations/{unifiedRoleManagementAlertConfigurationId}
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
|alertDefinitionId|String|The identifier for an alert definition. Optional.|
scopeType|String|The type of the scope where the alert is created. DirectoryRole is the only supported one for Azure AD Roles. New types like Application and Group may be introduced. Optional.|
|scopeId|String|The id of the scope where the alert is related. For example, directory id, application id, etc. Optional.|
|isEnabled|Boolean|True if the alert is enabled. Setting to false will disable scanning for the specific alert. Optional.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_unifiedrolemanagementalertconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alertConfigurations/DirectoryRole_67b47f38-0f0b-4e62-a3be-859140c2061f_TooManyGlobalAdminsAssignedToTenantAlert
Content-Type: application/json

{
  "@odata.type":"#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration",
  "isEnabled": "true",
  "globalAdminCountThreshold": 7,
  "percentageOfGlobalAdminsOutOfRolesThreshold": 70
}
```

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

