---
title: "Delete siteSource"
description: "Delete a siteSource object associated with an ediscoveryCustodian."
author: "manjarisenthil"
ms.date: 02/11/2025
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: apiPageType
---

# Delete siteSource

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [siteSource](../resources/security-sitesource.md) object associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoverycustodian_delete_sitesources" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverycustodian-delete-sitesources-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /security/cases/ediscoveryCases/{ediscoveryCaseId}/custodians/{ediscoveryCustodianId}/siteSources/{siteSourceId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_ediscoverycustodian_sitesource"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/security/cases/ediscoveryCases/4c551bc5-f6f8-435c-8391-d1a08f1ffd5b/custodians/2114ada2-3958-4945-bb6e-66fe9fca4772/siteSources/08345ae2-bc5a-4d71-a18b-c490993959ee
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```