---
title: "Update Quick Machine Recovery Update Catalog Entry"
description: "Update the properties of a recoveryUpdateCatalogEntry object."
author: "andredm7"
ms.date: 01/16/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Update Quick Machine Recovery Update Catalog Entry

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a recoveryUpdateCatalogEntry object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-recoveryupdatecatalogentry-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-recoveryupdatecatalogentry-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /recoveryUpdateCatalogEntry
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the content. Read-only. Inherited from [microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md). Optional.|
|deployableUntilDateTime|DateTimeOffset|The date on which the content is no longer available to deploy. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md). Optional.|
|releaseDateTime|DateTimeOffset|The release date for the content. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md). Required.|
|catalogName|String|The catalog name. Read-only. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry](../resources/windowsupdates-recoveryupdatecatalogentry.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_recoveryupdatecatalogentry"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/recoveryUpdateCatalogEntry
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry",
  "displayName": "String",
  "deployableUntilDateTime": "String (timestamp)",
  "releaseDateTime": "String (timestamp)",
  "catalogName": "String"
}
```
### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry",
  "id": "59fb7daa-37ab-b2de-637f-1d21c6eda8c2",
  "displayName": "String",
  "deployableUntilDateTime": "String (timestamp)",
  "releaseDateTime": "String (timestamp)",
  "catalogName": "String"
}
```

