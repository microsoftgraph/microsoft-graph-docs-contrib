---
title: "Get azureADPremiumLicenseInsight"
description: "Get the premium license utilization insight for the tenant."
author: "sanchariroy"
ms.date: 03/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# Get azureADPremiumLicenseInsight

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the premium license utilization insight for the tenant. This API returns data about how many premium licenses are entitled and how the associated P1 and P2 features are being used. The calling tenant must have at least one Microsoft Entra ID P1 or P2 license. Tenants without a premium license receive a `403 Forbidden` response with the `missingLicense` error code.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "azureadpremiumlicenseinsight-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/azureadpremiumlicenseinsight-get-permissions.md)]

> [!IMPORTANT]
> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. The following least privileged roles are supported for this operation.
> - Application Administrator
> - Cloud Application Administrator
> - Global Reader
> - Reports Reader
> - Security Administrator
> - Security Operator
> - Security Reader

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/azureADPremiumLicenseInsight
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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
```msgraph-interactive
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
  "id": "00000000-0000-0000-0000-000000000000",
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
