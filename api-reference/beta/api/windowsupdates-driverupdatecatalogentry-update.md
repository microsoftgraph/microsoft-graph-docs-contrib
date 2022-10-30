---
title: "Update driverUpdateCatalogEntry"
description: "Update the properties of a driverUpdateCatalogEntry object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update driverUpdateCatalogEntry
Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [driverUpdateCatalogEntry](../resources/windowsupdates-driverupdatecatalogentry.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /driverUpdateCatalogEntry
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md). Optional.|
|deployableUntilDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md). Optional.|
|releaseDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [catalogEntry](../resources/windowsupdates-catalogentry.md). Required.|
|description|String|**TODO: Add Description** Optional.|
|driverClass|String|**TODO: Add Description** Optional.|
|provider|String|**TODO: Add Description** Optional.|
|setupInformationFile|String|**TODO: Add Description** Optional.|
|manufacturer|String|**TODO: Add Description** Optional.|
|version|String|**TODO: Add Description** Optional.|
|versionDateTime|DateTimeOffset|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [driverUpdateCatalogEntry](../resources/windowsupdates-driverupdatecatalogentry.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_driverupdatecatalogentry"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/driverUpdateCatalogEntry
Content-Type: application/json
Content-length: 420

{
  "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateCatalogEntry",
  "displayName": "String",
  "deployableUntilDateTime": "String (timestamp)",
  "releaseDateTime": "String (timestamp)",
  "description": "String",
  "driverClass": "String",
  "provider": "String",
  "setupInformationFile": "String",
  "manufacturer": "String",
  "version": "String",
  "versionDateTime": "String (timestamp)"
}
```


### Response
The following is an example of the response
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
  "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateCatalogEntry",
  "id": "41a82b3e-191f-778c-120b-f0ba12161f08",
  "displayName": "String",
  "deployableUntilDateTime": "String (timestamp)",
  "releaseDateTime": "String (timestamp)",
  "description": "String",
  "driverClass": "String",
  "provider": "String",
  "setupInformationFile": "String",
  "manufacturer": "String",
  "version": "String",
  "versionDateTime": "String (timestamp)"
}
```

