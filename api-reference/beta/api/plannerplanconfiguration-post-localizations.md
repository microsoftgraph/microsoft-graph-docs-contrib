---
title: "Create plannerPlanConfigurationLocalization"
description: "Create a new plannerPlanConfigurationLocalization object."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create plannerPlanConfigurationLocalization
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|BusinessScenarioConfig.ReadWrite.OwnedBy, BusinessScnearioConfig.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application| BusinessScenarioConfig.ReadWrite.OwnedBy |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/businessScenarios/{businessScenarioId}/planner/planConfiguration/localizations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) object.

You can specify the following properties when creating a **plannerPlanConfigurationLocalization**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|languageTag|String|**TODO: Add Description** Optional.|
|planTitle|String|**TODO: Add Description** Optional.|
|buckets|[plannerPlanConfigurationBucketLocalization](../resources/plannerplanconfigurationbucketlocalization.md) collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_plannerplanconfigurationlocalization_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/businessScenarios/{businessScenarioId}/planner/planConfiguration/localizations
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerPlanConfigurationLocalization",
  "languageTag": "String",
  "planTitle": "String",
  "buckets": [
    {
      "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization"
    }
  ]
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerPlanConfigurationLocalization"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerPlanConfigurationLocalization",
  "id": "fe3919b6-7927-0c66-cc73-a7ba6b0adf7d",
  "languageTag": "String",
  "planTitle": "String",
  "buckets": [
    {
      "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization"
    }
  ]
}
```

