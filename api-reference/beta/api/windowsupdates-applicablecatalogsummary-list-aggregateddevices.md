---
title: "List aggregatedDevices"
description: "List the devices included in an update applicability summary."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# List aggregatedDevices
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [applicableDevice](../resources/windowsupdates-applicabledevice.md) resources included in an update applicability summary.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-applicablecatalogsummary-list-aggregateddevices-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-applicablecatalogsummary-list-aggregateddevices-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/data/applicableCatalogSummaries/{applicableCatalogSummaryId}/aggregatedDevices
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

If successful, this method returns a `200 OK` response code and a collection of [applicableDevice](../resources/windowsupdates-applicabledevice.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_aggregateddevices"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/data/applicableCatalogSummaries/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef/aggregatedDevices
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsUpdates.applicableDevice)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.applicableDevice",
      "id": "66666666-6666-4666-8666-666666666666",
      "isRecommended": true
    }
  ]
}
```
