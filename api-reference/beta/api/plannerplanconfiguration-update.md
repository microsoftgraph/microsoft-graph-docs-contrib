---
title: "Update plannerPlanConfiguration"
description: "Update the properties of a plannerPlanConfiguration object for a businessScenario."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "business-scenarios"
doc_type: apiPageType
ms.date: 08/08/2024
---

# Update plannerPlanConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) object and its [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) collection for a [businessScenario](../resources/businessscenario.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannerplanconfiguration_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannerplanconfiguration-update-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|defaultLanguage|String|The language that should be used for creating plans when no language has been specified.|
|buckets|[plannerPlanConfigurationBucketDefinition](../resources/plannerplanconfigurationbucketdefinition.md) collection|Buckets available in the plan.|
|localizations|[plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) collection|Localized names for the plan configuration.|

## Response

If successful, this method returns a `200 OK` response code and an updated [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.

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
  ],
  "localizations": [
    {
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
    },
    {
      "id": "es-es",
      "languageTag": "es-es",
      "planTitle": "Seguimiento de pedidos",
      "buckets": [
        {
          "externalBucketId": "deliveryBucket",
          "name": "Entregas"
        },
        {
          "externalBucketId": "storePickupBucket",
          "name": "Recogida"
        },
        {
          "externalBucketId": "specialOrdersBucket",
          "name": "Pedidos especiales"
        },
        {
          "externalBucketId": "specialOrdersBucket",
          "name": "Devoluciones de clientes"
        }
      ]
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-plannerplanconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-plannerplanconfiguration-cli-snippets.md)]
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

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-plannerplanconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
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
  ],
  "localizations": [
    {
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
    },
    {
      "id": "es-es",
      "languageTag": "es-es",
      "planTitle": "Seguimiento de pedidos",
      "buckets": [
        {
          "externalBucketId": "deliveryBucket",
          "name": "Entregas"
        },
        {
          "externalBucketId": "storePickupBucket",
          "name": "Recogida"
        },
        {
          "externalBucketId": "specialOrdersBucket",
          "name": "Pedidos especiales"
        },
        {
          "externalBucketId": "specialOrdersBucket",
          "name": "Devoluciones de clientes"
        }
      ]
    }
  ]
}
```
