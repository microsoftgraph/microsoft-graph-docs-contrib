---
title: "Update governancePolicyTemplate"
description: "Update the properties of a governancePolicyTemplate object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update governancePolicyTemplate
Namespace: microsoft.graph

Update the properties of a [governancePolicyTemplate](../resources/governancepolicytemplate.md) object.

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
PATCH /approvalWorkflowProviders/{approvalWorkflowProvidersId}/policyTemplates/{governancePolicyTemplateId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [governancePolicyTemplate](../resources/governancepolicytemplate.md) object.

The following table shows the properties that are required when you update the [governancePolicyTemplate](../resources/governancepolicytemplate.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|policy|[governancePolicy](../resources/governancepolicy.md)|**TODO: Add Description**|
|settings|[businessFlowSettings](../resources/businessflowsettings.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [governancePolicyTemplate](../resources/governancepolicytemplate.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_governancepolicytemplate"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/approvalWorkflowProviders/{approvalWorkflowProvidersId}/policyTemplates/{governancePolicyTemplateId}
Content-Type: application/json
Content-length: 252

{
  "@odata.type": "#microsoft.graph.governancePolicyTemplate",
  "displayName": "String",
  "policy": {
    "@odata.type": "microsoft.graph.governancePolicy"
  },
  "settings": {
    "@odata.type": "microsoft.graph.businessFlowSettings"
  }
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
  "@odata.type": "#microsoft.graph.governancePolicyTemplate",
  "id": "2c5c877c-877c-2c5c-7c87-5c2c7c875c2c",
  "displayName": "String",
  "policy": {
    "@odata.type": "microsoft.graph.governancePolicy"
  },
  "settings": {
    "@odata.type": "microsoft.graph.businessFlowSettings"
  }
}
```

