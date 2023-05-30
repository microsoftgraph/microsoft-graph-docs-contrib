---
title: "Create plannerPlanConfigurationLocalization"
description: "Create a new plannerPlanConfigurationLocalization object."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
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
|Delegated (work or school account)|BusinessScenarioConfig.ReadWrite.OwnedBy, BusinessScenarioConfig.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application| BusinessScenarioConfig.ReadWrite.OwnedBy |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

For a specific localization based on a business scenario ID:

``` http
POST /solutions/businessScenarios/{businessScenarioId}/planner/planConfiguration/localizations
```

For a specific localization based on the unique name of a business scenario:

``` http
POST /solutions/businessScenarios(uniqueName='{uniqueName}')/planner/planConfiguration/localizations
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) object.

You can specify the following properties when you create a **plannerPlanConfigurationLocalization**.

|Property|Type|Description|
|:---|:---|:---|
|buckets|[plannerPlanConfigurationBucketLocalization](../resources/plannerplanconfigurationbucketlocalization.md) collection|Localizations for buckets specified in the [plannerPlanConfiguration](../resources/plannerplanconfiguration.md). Required.|
|languageTag|String|The code for the language the localized data is intended for. Required.|
|planTitle|String|Localized title of the plan. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) object in the response body.

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_plannerplanconfigurationlocalization_from_",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d"]
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/planConfiguration/localizations
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerPlanConfigurationLocalization",
  "languageTag": "en-us",
  "planTitle": "Order Tracking",
  "buckets": [
    {
        "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization",
        "externalBucketId": "deliveryBucket",
        "name": "Deliveries"
    },
    {
        "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization",
        "externalBucketId": "storePickupBucket",
        "name": "Pickup"
    },
    {
        "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization",
        "externalBucketId": "specialOrdersBucket",
        "name": "Special Orders"
    },
    {
        "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization",
        "externalBucketId": "returnProcessingBucket",
        "name": "Customer Returns"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-plannerplanconfigurationlocalization-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-plannerplanconfigurationlocalization-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-plannerplanconfigurationlocalization-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-plannerplanconfigurationlocalization-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-plannerplanconfigurationlocalization-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-plannerplanconfigurationlocalization-from--powershell-snippets.md)]
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerPlanConfigurationLocalization",
  "id": "en-us",
  "languageTag": "en-us",
  "planTitle": "Order Tracking",
  "buckets": [
    {
        "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization",
        "externalBucketId": "deliveryBucket",
        "name": "Deliveries"
    },
    {
        "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization",
        "externalBucketId": "storePickupBucket",
        "name": "Pickup"
    },
    {
        "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization",
        "externalBucketId": "specialOrdersBucket",
        "name": "Special Orders"
    },
    {
        "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization",
        "externalBucketId": "returnProcessingBucket",
        "name": "Customer Returns"
    }
  ]
}
```
