---
title: "List taskDefinitions"
description: "Get a list of the taskDefinition objects and their properties."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List taskDefinitions

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [taskDefinition](../resources/identitygovernance-taskdefinition.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.Read.All, LifecycleWorkflows.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/lifecycleWorkflows/taskDefinitions
```

## Optional query parameters

This method supports the `$select`, `$top`, `$count`, `$search`, `$orderby`, `$expand`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [taskDefinition](../resources/identitygovernance-taskdefinition.md) objects in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_taskdefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/taskDefinitions
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.identityGovernance.taskDefinition)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.identityGovernance.taskDefinition",
      "id": "832f9526-e95e-907e-3016-541846b845d6",
      "category": "String",
      "continueOnError": "Boolean",
      "description": "String",
      "displayName": "String",
      "parameters": [
        {
          "@odata.type": "microsoft.graph.identityGovernance.parameter"
        }
      ],
      "version": "Integer"
    }
  ]
}
```
