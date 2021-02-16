---
title: "Update siteSource"
description: "Update the properties of a siteSource object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update siteSource
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [siteSource](../resources/ediscovery-sitesource.md) object.

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
PATCH /compliance/ediscovery/cases/{caseId}/custodians/{custodianId}/siteSources/{siteSourceId}
PATCH /compliance/ediscovery/cases/{caseId}/legalHolds/{legalHoldId}/siteSources/{siteSourceId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [siteSource](../resources/ediscovery-sitesource.md) object.

The following table shows the properties that are required when you update the [siteSource](../resources/ediscovery-sitesource.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|
|displayName|String|**TODO: Add Description** Inherited from [dataSource](../resources/ediscovery-datasource.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSource](../resources/ediscovery-datasource.md)|
|createdBy|[identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description** Inherited from [dataSource](../resources/ediscovery-datasource.md)|



## Response

If successful, this method returns a `200 OK` response code and an updated [siteSource](../resources/ediscovery-sitesource.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_sitesource"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/custodians/{custodianId}/siteSources/{siteSourceId}
Content-Type: application/json
Content-length: 165

{
  "@odata.type": "#microsoft.graph.ediscovery.siteSource",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.ediscovery.siteSource",
  "id": "4edd3ef5-3ef5-4edd-f53e-dd4ef53edd4e",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

