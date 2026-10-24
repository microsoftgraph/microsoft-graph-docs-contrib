---
title: "List applicableCatalogSummaries"
description: "List update applicability summaries across Windows Autopatch policies."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# List applicableCatalogSummaries
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [applicableCatalogSummary](../resources/windowsupdates-applicablecatalogsummary.md) resources aggregated across Windows Autopatch policies.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_updatedata_list_applicablecatalogsummaries" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-updatedata-list-applicablecatalogsummaries-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/data/applicableCatalogSummaries
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$orderby`, `$select`, and `$top` OData query parameters. The service applies server-side paging; follow the `@odata.nextLink` URL in the response to retrieve the next page. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [applicableCatalogSummary](../resources/windowsupdates-applicablecatalogsummary.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_applicablecatalogsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/data/applicableCatalogSummaries
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsUpdates.applicableCatalogSummary)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.applicableCatalogSummary",
      "id": "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
      "aggregatedDeviceCount": 12,
      "hasRecommendedDevice": true,
      "policies": [
        "11111111-1111-4111-8111-111111111111"
      ]
    }
  ]
}
```
