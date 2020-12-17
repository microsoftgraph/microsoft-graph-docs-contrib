---
title: "Create businessFlow"
description: "Create a new businessFlow object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create businessFlow
Namespace: microsoft.graph

Create a new businessFlow object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
POST /approvalWorkflowProviders/{approvalWorkflowProvidersId}/businessFlows
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [businessFlow](../resources/businessflow.md) object.

The following table shows the properties that are required when you create the [businessFlow](../resources/businessflow.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|deDuplicationId|String|**TODO: Add Description**|
|schemaId|String|**TODO: Add Description**|
|customData|String|**TODO: Add Description**|
|recordVersion|String|**TODO: Add Description**|
|policy|[governancePolicy](../resources/governancepolicy.md)|**TODO: Add Description**|
|policyTemplateId|String|**TODO: Add Description**|
|settings|[businessFlowSettings](../resources/businessflowsettings.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [businessFlow](../resources/businessflow.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_businessflow_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/approvalWorkflowProviders/{approvalWorkflowProvidersId}/businessFlows
Content-Type: application/json
Content-length: 415

{
  "@odata.type": "#microsoft.graph.businessFlow",
  "displayName": "String",
  "description": "String",
  "deDuplicationId": "String",
  "schemaId": "String",
  "customData": "String",
  "recordVersion": "String",
  "policy": {
    "@odata.type": "microsoft.graph.governancePolicy"
  },
  "policyTemplateId": "String",
  "settings": {
    "@odata.type": "microsoft.graph.businessFlowSettings"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.businessFlow"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.businessFlow",
  "id": "7769bb72-bb72-7769-72bb-697772bb6977",
  "displayName": "String",
  "description": "String",
  "deDuplicationId": "String",
  "schemaId": "String",
  "customData": "String",
  "recordVersion": "String",
  "policy": {
    "@odata.type": "microsoft.graph.governancePolicy"
  },
  "policyTemplateId": "String",
  "settings": {
    "@odata.type": "microsoft.graph.businessFlowSettings"
  }
}
```

