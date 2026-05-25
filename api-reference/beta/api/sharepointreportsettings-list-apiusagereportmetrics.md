---
title: "List apiUsageReportMetrics"
description: "Get the list of SharePoint API usage report metrics and their enablement status for the tenant."
author: "abhishekkakhandiki"
ms.date: 05/21/2026
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: apiPageType
---

# List apiUsageReportMetrics

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [SharePoint API usage report metrics and their enablement status](../resources/apiusagereportenablementstatus.md) for the tenant. Currently, only the `EgressReport` metric is supported.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointreportsettings-list-apiusagereportmetrics-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointreportsettings-list-apiusagereportmetrics-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/reportSettings/sharePoint/apiUsageReportMetrics
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

If successful, this method returns a `200 OK` response code and a collection of [apiUsageReportEnablementStatus](../resources/apiusagereportenablementstatus.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_apiusagereportmetrics"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/reportSettings/sharePoint/apiUsageReportMetrics
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.apiUsageReportEnablementStatus)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.apiUsageReportEnablementStatus",
      "metric": "EgressReport",
      "onboardingStatus": "enabled"
    }
  ]
}
```
