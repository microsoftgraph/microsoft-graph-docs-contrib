---
title: "Get applicable catalog"
description: "Get a catalog entry that applies to devices targeted by a Windows Autopatch policy."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Get applicable catalog

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get an [applicableCatalog](../resources/windowsupdates-applicablecatalog.md) resource for a Windows Autopatch policy.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_applicablecatalog_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-applicablecatalog-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/policies/{policyId}/applicableCatalogs/{applicableCatalogId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.windowsUpdates.applicableCatalog](../resources/windowsupdates-applicablecatalog.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_applicablecatalog"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/policies/11111111-1111-4111-8111-111111111111/applicableCatalogs/0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.applicableCatalog"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.applicableCatalog",
  "id": "0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef",
  "deviceCount": 12,
  "hasRecommendedDevice": true
}
```
