---
title: "Get businessFlow"
description: "Read the properties and relationships of a businessFlow object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get businessFlow
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [businessFlow](../resources/businessflow.md) object.

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
GET /approvalWorkflowProviders/{approvalWorkflowProvidersId}/businessFlows/{businessFlowId}
GET /approvalWorkflowProviders/{approvalWorkflowProvidersId}/businessFlowsWithRequestsAwaitingMyDecision/{businessFlowId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [businessFlow](../resources/businessflow.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_businessflow"
}
-->
``` http
GET https://graph.microsoft.com/beta/approvalWorkflowProviders/{approvalWorkflowProvidersId}/businessFlows/{businessFlowId}
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.businessFlow",
    "id": "a7a3e643-e643-a7a3-43e6-a3a743e6a3a7",
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
}
```

