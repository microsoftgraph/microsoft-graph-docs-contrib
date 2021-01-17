---
title: "Update unifiedRoleScheduleInstanceBase"
description: "Update the properties of an unifiedRoleScheduleInstanceBase object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update unifiedRoleScheduleInstanceBase
Namespace: microsoft.graph

Update the properties of an [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md) object.

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
PATCH /unifiedRoleScheduleBase/activeInstance
PATCH /unifiedRoleAssignmentSchedules/{unifiedRoleAssignmentSchedulesId}/activeInstance
PATCH /unifiedRoleEligibilitySchedules/{unifiedRoleEligibilitySchedulesId}/activeInstance
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md) object.

The following table shows the properties that are required when you update the [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|principalId|String|**TODO: Add Description**|
|roleDefinitionId|String|**TODO: Add Description**|
|directoryScopeId|String|**TODO: Add Description**|
|appScopeId|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [unifiedRoleScheduleInstanceBase](../resources/unifiedrolescheduleinstancebase.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_unifiedrolescheduleinstancebase"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/unifiedRoleScheduleBase/activeInstance
Content-Type: application/json
Content-length: 194

{
  "@odata.type": "#microsoft.graph.unifiedRoleScheduleInstanceBase",
  "principalId": "String",
  "roleDefinitionId": "String",
  "directoryScopeId": "String",
  "appScopeId": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.unifiedRoleScheduleInstanceBase",
  "id": "cbdf2faf-2faf-cbdf-af2f-dfcbaf2fdfcb",
  "principalId": "String",
  "roleDefinitionId": "String",
  "directoryScopeId": "String",
  "appScopeId": "String"
}
```

