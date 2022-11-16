---
title: "Update plannerPlanConfiguration"
description: "Update the properties of a plannerPlanConfiguration object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update plannerPlanConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) object.

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
PATCH /solutions/businessScenarios/{businessScenarioId}/planner/planConfiguration
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
|defaultLanguage|String|**TODO: Add Description** Optional.|
|buckets|[plannerPlanConfigurationBucketDefinition](../resources/plannerplanconfigurationbucketdefinition.md) collection|**TODO: Add Description** Optional.|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_plannerplanconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/businessScenarios/{businessScenarioId}/planner/planConfiguration
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerPlanConfiguration",
  "defaultLanguage": "String",
  "buckets": [
    {
      "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketDefinition"
    }
  ],
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
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
```
