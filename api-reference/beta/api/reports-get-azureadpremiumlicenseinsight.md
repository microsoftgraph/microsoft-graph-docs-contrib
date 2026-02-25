---
title: "Get azureADPremiumLicenseInsight"
description: "Get the premium license utilization insight for the tenant."
author: "wukchung"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
ms.date: 02/25/2026
---

# Get azureADPremiumLicenseInsight

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the Microsoft Entra ID premium license utilization insight for the tenant. This API returns data about how many premium licenses are entitled and how the associated P1 and P2 features are being used.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reports_get_azureadpremiumlicenseinsight" } -->

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
GET /reports/azureADPremiumLicenseInsight
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [azureADPremiumLicenseInsight](../resources/azureadpremiumlicenseinsight.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_azureadpremiumlicenseinsight"
}
-->

``` http
GET https://graph.microsoft.com/beta/reports/azureADPremiumLicenseInsight
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.azureADPremiumLicenseInsight"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
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
```
