---
title: "List Quick Machine Recovery Product Revisions"
description: "Lists product revisions that are associated with a recovery update."
author: "andredm7"
ms.date: 01/16/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# List Quick Machine Recovery Product Revisions

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Lists product revisions that are associated with a recovery update.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-recoveryupdatecatalogentry-list-productrevisions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-recoveryupdatecatalogentry-list-productrevisions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /recoveryUpdateCatalogEntry/productRevisions
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

If successful, this method returns a `200 OK` response code and a collection of [productRevision](../resources/windowsupdates-productrevision.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_productrevision"
}
-->
``` http
GET https://graph.microsoft.com/beta/recoveryUpdateCatalogEntry/productRevisions
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.productRevision"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.productRevision",
      "id": "500d7d30-36b6-6a4d-ed0a-3b77e60af139",
      "displayName": "String",
      "releaseDateTime": "String (timestamp)",
      "isHotpatchUpdate": "Boolean",
      "version": "String",
      "product": "String",
      "osBuild": {
        "@odata.type": "microsoft.graph.windowsUpdates.buildVersionDetails"
      }
    }
  ]
}
```

