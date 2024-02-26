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

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannerplanconfiguration_post_localizations" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannerplanconfiguration-post-localizations-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-plannerplanconfigurationlocalization-from--cli-snippets.md)]
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

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-plannerplanconfigurationlocalization-from--python-snippets.md)]
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
