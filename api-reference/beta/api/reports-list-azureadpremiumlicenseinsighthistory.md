---
title: "List azureADPremiumLicenseInsightHistory"
description: "Get the daily snapshots of premium license utilization for the tenant."
author: "wukchung"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.date: 02/25/2026
---

# List azureADPremiumLicenseInsightHistory

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the daily snapshots of Microsoft Entra ID premium license utilization for the tenant over the last six months. Each record represents a single day's utilization data, including entitled license counts and feature usage.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reports_list_azureadpremiumlicenseinsighthistory" } -->

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Reports.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Reports.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /reports/azureADPremiumLicenseInsightHistory
```

## Optional query parameters

This method supports the `$filter` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [azureADPremiumLicenseInsightHistory](../resources/azureadpremiumlicenseinsighthistory.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_azureadpremiumlicenseinsighthistory"
}
-->

``` http
GET https://graph.microsoft.com/beta/reports/azureADPremiumLicenseInsightHistory
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.azureADPremiumLicenseInsightHistory)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "2026-02-24",
      "factDate": "2026-02-24",
      "entitledP1LicenseCount": 100,
      "entitledP2LicenseCount": 50,
      "entitledTotalLicenseCount": 150,
      "p1FeatureUtilizations": {
        "conditionalAccess": {
          "userCount": 85
        },
        "conditionalAccessGuestUsers": {
          "userCount": 12
        }
      },
      "p2FeatureUtilizations": {
        "riskBasedConditionalAccess": {
          "userCount": 30
        },
        "riskBasedConditionalAccessGuestUsers": {
          "userCount": 5
        }
      },
      "privateAccessFeatureUtilizations": {
        "privateAccess": {
          "userCount": 20
        }
      },
      "internetAccessFeatureUtilizations": {
        "internetAccess": {
          "userCount": 45
        },
        "internetAccessM365": {
          "userCount": 38
        }
      }
    }
  ]
}
```
