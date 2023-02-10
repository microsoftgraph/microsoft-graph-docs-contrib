---
title: "Update unifiedRoleManagementAlertConfiguration"
description: "Update the properties of an unifiedRoleManagementAlertConfiguration object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
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
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

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


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|alertDefinitionId|String|**TODO: Add Description** Optional.|
|scopeType|String|**TODO: Add Description** Optional.|
|scopeId|String|**TODO: Add Description** Optional.|
|isEnabled|Boolean|**TODO: Add Description** Optional.|



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
PATCH https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alertConfigurations/{unifiedrolemanagementalertconfigurationId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementAlertConfiguration",
  "alertDefinitionId": "String",
  "scopeType": "String",
  "scopeId": "String",
  "isEnabled": "Boolean"
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

