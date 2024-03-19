---
title: "Update plannerPlanConfigurationLocalization"
description: "Update the properties of a plannerPlanConfigurationLocalization object."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "business-scenarios"
doc_type: apiPageType
---

# Update plannerPlanConfigurationLocalization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannerplanconfigurationlocalization_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannerplanconfigurationlocalization-update-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
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

The following example shows a request.

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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-plannerplanconfigurationlocalization-cli-snippets.md)]
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

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-plannerplanconfigurationlocalization-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
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
