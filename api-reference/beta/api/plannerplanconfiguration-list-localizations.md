---
title: "List plannerPlanConfigurationLocalizations"
description: "Get a list of the plannerPlanConfigurationLocalization objects and their properties."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "business-scenarios"
doc_type: apiPageType
ms.date: 04/05/2024
---

# List plannerPlanConfigurationLocalizations

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannerplanconfiguration_list_localizations" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannerplanconfiguration-list-localizations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

For localizations based on a business scenario ID:

``` http
GET /solutions/businessScenarios/{businessScenarioId}/planner/planConfiguration/localizations
```

For localizations based on the unique name of a business scenario:

``` http
GET /solutions/businessScenarios(uniqueName='{uniqueName}')/planner/planConfiguration/localizations
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) objects in the response body.

## Examples

### Example 1: Get all localizations

The following example shows a request that gets all localized names for a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md).

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_plannerplanconfigurationlocalization_e1",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d"]
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/planConfiguration/localizations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-plannerplanconfigurationlocalization-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-plannerplanconfigurationlocalization-e1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-plannerplanconfigurationlocalization-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-plannerplanconfigurationlocalization-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-plannerplanconfigurationlocalization-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-plannerplanconfigurationlocalization-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-plannerplanconfigurationlocalization-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-plannerplanconfigurationlocalization-e1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.plannerPlanConfigurationLocalization)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
    },
    {
      "@odata.type": "#microsoft.graph.plannerPlanConfigurationLocalization",
      "id": "pt-br",
      "languageTag": "pt-br",
      "planTitle": "Acompanhamento de pedidos",
      "buckets": [
          {
              "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization",
              "externalBucketId": "deliveryBucket",
              "name": "Entregas"
          },
          {
              "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization",
              "externalBucketId": "storePickupBucket",
              "name": "Retirada na loja"
          },
          {
              "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization",
              "externalBucketId": "specialOrdersBucket",
              "name": "Pedidos especiais"
          },
          {
              "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization",
              "externalBucketId": "returnProcessingBucket",
              "name": "Devoluções"
          }
      ]
    }
  ]
}
```

### Example 2: Get localization for a specific language tag

The following example shows a request that gets all localized names for a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) for a specific language.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_plannerplanconfigurationlocalization_e2",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d"]
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/planConfiguration/localizations?$filter=languageTag eq 'en-us'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-plannerplanconfigurationlocalization-e2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-plannerplanconfigurationlocalization-e2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-plannerplanconfigurationlocalization-e2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-plannerplanconfigurationlocalization-e2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-plannerplanconfigurationlocalization-e2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-plannerplanconfigurationlocalization-e2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-plannerplanconfigurationlocalization-e2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-plannerplanconfigurationlocalization-e2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.plannerPlanConfigurationLocalization)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
  ]
}
```
