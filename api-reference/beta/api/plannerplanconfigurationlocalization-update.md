---
title: "Update plannerPlanConfigurationLocalization"
description: "Update the properties of a plannerPlanConfigurationLocalization object."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: apiPageType
---

# Update plannerPlanConfigurationLocalization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) object.

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

For a specific localization based on a business scenario ID and a localization ID:

``` http
PATCH /solutions/businessScenarios/{businessScenarioId}/planner/planConfiguration/localizations/{plannerPlanConfigurationLocalizationId}
```

For a specific localization based on the unique name of a business scenario and a localization ID:

``` http
PATCH /solutions/businessScenarios(uniqueName='{uniqueName}')/planner/planConfiguration/localizations/{plannerPlanConfigurationLocalizationId}
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
|buckets|[plannerPlanConfigurationBucketLocalization](../resources/plannerplanconfigurationbucketlocalization.md) collection|Localizations for buckets specified in the [plannerPlanConfiguration](../resources/plannerplanconfiguration.md). Optional.|
|planTitle|String|Localized title of the plan. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_plannerplanconfigurationlocalization",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d", "en-us"]
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/planConfiguration/localizations/en-us
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerPlanConfigurationLocalization",
  "planTitle": "Order Tracking",
  "buckets": [
    {
      "externalBucketId": "deliveryBucket",
      "name": "Deliveries"
    },
    {
      "externalBucketId": "storePickupBucket",
      "name": "Pickup"
    },
    {
      "externalBucketId": "specialOrdersBucket",
      "name": "Special Orders"
    },
    {
      "externalBucketId": "returnProcessingBucket",
      "name": "Customer Returns"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-plannerplanconfigurationlocalization-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-plannerplanconfigurationlocalization-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-plannerplanconfigurationlocalization-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-plannerplanconfigurationlocalization-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-plannerplanconfigurationlocalization-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-plannerplanconfigurationlocalization-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerPlanConfigurationLocalization"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerPlanConfigurationLocalization",
  "id": "en-us",
  "languageTag": "en-us",
  "planTitle": "Order Tracking",
  "buckets": [
    {
      "externalBucketId": "deliveryBucket",
      "name": "Deliveries"
    },
    {
      "externalBucketId": "storePickupBucket",
      "name": "Pickup"
    },
    {
      "externalBucketId": "specialOrdersBucket",
      "name": "Special Orders"
    },
    {
      "externalBucketId": "returnProcessingBucket",
      "name": "Customer Returns"
    }
  ]
}
```
