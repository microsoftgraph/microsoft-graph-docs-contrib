---
title: "Create governancePolicyTemplate"
description: "Create a new governancePolicyTemplate object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create governancePolicyTemplate
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new governancePolicyTemplate object.

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
POST /approvalWorkflowProviders/{approvalWorkflowProvidersId}/policyTemplates
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [governancePolicyTemplate](../resources/governancepolicytemplate.md) object.

The following table shows the properties that are required when you create the [governancePolicyTemplate](../resources/governancepolicytemplate.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|policy|[governancePolicy](../resources/governancepolicy.md)|**TODO: Add Description**|
|settings|[businessFlowSettings](../resources/businessflowsettings.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [governancePolicyTemplate](../resources/governancepolicytemplate.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_governancepolicytemplate_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/approvalWorkflowProviders/{approvalWorkflowProvidersId}/policyTemplates
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
  "truncated": true,
  "@odata.type": "microsoft.graph.governancePolicyTemplate"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.governancePolicyTemplate",
  "id": "e66deea3-eea3-e66d-a3ee-6de6a3ee6de6",
  "displayName": "String",
  "policy": {
    "@odata.type": "microsoft.graph.governancePolicy"
  },
  "settings": {
    "@odata.type": "microsoft.graph.businessFlowSettings"
  }
}
```

