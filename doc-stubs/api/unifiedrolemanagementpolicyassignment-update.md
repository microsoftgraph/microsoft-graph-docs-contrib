---
title: "Update unifiedRoleManagementPolicyAssignment"
description: "Update the properties of an unifiedRoleManagementPolicyAssignment object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update unifiedRoleManagementPolicyAssignment
Namespace: microsoft.graph

Update the properties of an [unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) object.

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
PATCH /policyRoot/roleManagementPolicyAssignments/{unifiedRoleManagementPolicyAssignmentId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) object.

The following table shows the properties that are required when you update the [unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|policyId|String|**TODO: Add Description**|
|scopeId|String|**TODO: Add Description**|
|scopeType|String|**TODO: Add Description**|
|roleDefinitionId|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_unifiedrolemanagementpolicyassignment"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policyRoot/roleManagementPolicyAssignments/{unifiedRoleManagementPolicyAssignmentId}
Content-Type: application/json
Content-length: 187

{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyAssignment",
  "policyId": "String",
  "scopeId": "String",
  "scopeType": "String",
  "roleDefinitionId": "String"
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
  "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyAssignment",
  "id": "d6e4112f-112f-d6e4-2f11-e4d62f11e4d6",
  "policyId": "String",
  "scopeId": "String",
  "scopeType": "String",
  "roleDefinitionId": "String"
}
```

