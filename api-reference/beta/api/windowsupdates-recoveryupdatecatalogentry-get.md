---
title: "Get Quick Machine Recovery Update Catalog Entry"
description: "Read the properties and relationships of microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry object."
author: "andredm7"
ms.date: 01/16/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Get Recovery Update Catalog Entry

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry](../resources/windowsupdates-recoveryupdatecatalogentry.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-recoveryupdatecatalogentry-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-recoveryupdatecatalogentry-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /recoveryUpdateCatalogEntry
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry](../resources/windowsupdates-recoveryupdatecatalogentry.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_recoveryupdatecatalogentry"
}
-->
``` http
GET https://graph.microsoft.com/beta/recoveryUpdateCatalogEntry
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry",
    "id": "59fb7daa-37ab-b2de-637f-1d21c6eda8c2",
    "displayName": "String",
    "deployableUntilDateTime": "String (timestamp)",
    "releaseDateTime": "String (timestamp)",
    "catalogName": "String"
  }
}
```

