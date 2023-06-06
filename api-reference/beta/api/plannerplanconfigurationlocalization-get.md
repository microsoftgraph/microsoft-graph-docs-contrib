---
title: "Get plannerPlanConfigurationLocalization"
description: "Read the properties and relationships of a plannerPlanConfigurationLocalization object."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: apiPageType
---

# Get plannerPlanConfigurationLocalization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) object.

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

For a specific localization based on a business scenario ID and a localization ID:

``` http
GET /solutions/businessScenarios/{businessScenarioId}/planner/planConfiguration/localizations/{plannerPlanConfigurationLocalizationId}
```

For a specific localization based on the unique name of a business scenario and a localization ID:

``` http
GET /solutions/businessScenarios(uniqueName='{uniqueName}')/planner/planConfiguration/localizations/{plannerPlanConfigurationLocalizationId}
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

If successful, this method returns a `200 OK` response code and a [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_plannerplanconfigurationlocalization",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d", "en-us"]
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/planConfiguration/localizations/en-us
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-plannerplanconfigurationlocalization-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-plannerplanconfigurationlocalization-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-plannerplanconfigurationlocalization-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-plannerplanconfigurationlocalization-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-plannerplanconfigurationlocalization-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-plannerplanconfigurationlocalization-powershell-snippets.md)]
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
