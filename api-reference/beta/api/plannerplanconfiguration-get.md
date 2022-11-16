---
title: "Get plannerPlanConfiguration"
description: "Read the properties and relationships of a plannerPlanConfiguration object."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get plannerPlanConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|BusinessScenarioConfig.Read.OwnedBy, BusinessScenarioConfig.ReadWrite.OwnedBy, BusinessScenarioConfig.Read.All, BusinessScenarioConfig.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|BusinessScenarioConfig.Read.OwnedBy, BusinessScenarioConfig.ReadWrite.OwnedBy|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/businessScenarios/{businessScenarioId}/planner/planConfiguration
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

If successful, this method returns a `200 OK` response code and a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_plannerplanconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/businessScenarios/{businessScenarioId}/planner/planConfiguration
```

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerPlanConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.plannerPlanConfiguration",
    "id": "0d9e8529-c49c-8fad-a12b-f87e079bf551",
    "defaultLanguage": "String",
    "buckets": [
      {
        "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketDefinition"
      }
    ],
    "createdBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "lastModifiedDateTime": "String (timestamp)"
  }
}
```
