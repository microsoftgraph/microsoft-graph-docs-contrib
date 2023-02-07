---
title: "Add unifiedRoleManagementAlertDefinition"
description: "Add alertDefinition by posting to the alertDefinition collection."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Add unifiedRoleManagementAlertDefinition
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add alertDefinition by posting to the alertDefinition collection.

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
POST /identityGovernance/roleManagementAlerts/alerts/{unifiedRoleManagementAlertId}/alertConfiguration/alertDefinition/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) object.

You can specify the following properties when creating an **unifiedRoleManagementAlertDefinition**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Optional.|
|scopeType|String|**TODO: Add Description** Optional.|
|scopeId|String|**TODO: Add Description** Required.|
|description|String|**TODO: Add Description** Optional.|
|severityLevel|alertSeverity|**TODO: Add Description**. The possible values are: `unknown`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`. Optional.|
|securityImpact|String|**TODO: Add Description** Optional.|
|mitigationSteps|String|**TODO: Add Description** Optional.|
|howToPrevent|String|**TODO: Add Description** Optional.|
|isRemediatable|Boolean|**TODO: Add Description** Optional.|
|isConfigurable|Boolean|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `204 No Content` response code and an [unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_unifiedrolemanagementalertdefinition_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/{unifiedRoleManagementAlertId}/alertConfiguration/alertDefinition/$ref
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementAlertDefinition",
  "displayName": "String",
  "scopeType": "String",
  "scopeId": "String",
  "description": "String",
  "severityLevel": "String",
  "securityImpact": "String",
  "mitigationSteps": "String",
  "howToPrevent": "String",
  "isRemediatable": "Boolean",
  "isConfigurable": "Boolean"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleManagementAlertDefinition"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementAlertDefinition",
  "id": "0d5b2e31-dfef-d26a-b4c6-fd7a94e1ba2d",
  "displayName": "String",
  "scopeType": "String",
  "scopeId": "String",
  "description": "String",
  "severityLevel": "String",
  "securityImpact": "String",
  "mitigationSteps": "String",
  "howToPrevent": "String",
  "isRemediatable": "Boolean",
  "isConfigurable": "Boolean"
}
```

