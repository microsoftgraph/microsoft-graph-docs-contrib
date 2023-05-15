---
title: "Update plannerPlanConfiguration"
description: "Update the properties of a plannerPlanConfiguration object for a businessScenario."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: apiPageType
---

# Update plannerPlanConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) object for a [businessScenario](../resources/businessscenario.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|BusinessScenarioConfig.ReadWrite.OwnedBy, BusinessScenarioConfig.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|BusinessScenarioConfig.ReadWrite.OwnedBy|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

For the plan configuration based on a business scenario ID:

``` http
PATCH /solutions/businessScenarios/{businessScenarioId}/planner/planConfiguration
```

For the plan configuration based on the unique name of a business scenario:

``` http
PATCH /solutions/businessScenarios(uniqueName='{uniqueName}')/planner/planConfiguration
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|defaultLanguage|String|The language that should be used for creating plans when no language has been specified. Required.|
|buckets|[plannerPlanConfigurationBucketDefinition](../resources/plannerplanconfigurationbucketdefinition.md) collection|Buckets that will be available in the plan. Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_plannerplanconfiguration",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d"]
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/planConfiguration
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerPlanConfiguration",
  "defaultLanguage": "en-us",
  "buckets": [
    {
      "externalBucketId": "deliveryBucket"
    },
    {
      "externalBucketId": "storePickupBucket"
    },
    {
      "externalBucketId": "specialOrdersBucket"
    },
    {
      "externalBucketId": "returnProcessingBucket"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-plannerplanconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-plannerplanconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-plannerplanconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-plannerplanconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-plannerplanconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-plannerplanconfiguration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
  "@odata.type": "#microsoft.graph.plannerPlanConfiguration",
  "id": "afdd911ee3db44b69cc28373a6192e94",
  "defaultLanguage": "en-us",
  "buckets": [
    {
      "externalBucketId": "deliveryBucket"
    },
    {
      "externalBucketId": "storePickupBucket"
    },
    {
      "externalBucketId": "specialOrdersBucket"
    },
    {
      "externalBucketId": "returnProcessingBucket"
    }
  ]
}
```
