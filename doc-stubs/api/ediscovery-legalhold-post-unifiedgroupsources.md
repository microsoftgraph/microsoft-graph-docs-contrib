---
title: "Create unifiedGroupSource"
description: "Create a new unifiedGroupSource object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create unifiedGroupSource
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new unifiedGroupSource object.

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
POST /compliance/ediscovery/cases/{caseId}/legalHolds/{legalHoldId}/unifiedGroupSources
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [unifiedGroupSource](../resources/ediscovery-unifiedgroupsource.md) object.

The following table shows the properties that are required when you create the [unifiedGroupSource](../resources/ediscovery-unifiedgroupsource.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|
|displayName|String|**TODO: Add Description** Inherited from [dataSource](../resources/ediscovery-datasource.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSource](../resources/ediscovery-datasource.md)|
|createdBy|[identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description** Inherited from [dataSource](../resources/ediscovery-datasource.md)|
|includedSources|sourceType|**TODO: Add Description**. Possible values are: `mailbox`, `site`.|



## Response

If successful, this method returns a `201 Created` response code and an [unifiedGroupSource](../resources/ediscovery-unifiedgroupsource.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_unifiedgroupsource_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/legalHolds/{legalHoldId}/unifiedGroupSources
Content-Type: application/json
Content-length: 205

{
  "@odata.type": "#microsoft.graph.ediscovery.unifiedGroupSource",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "includedSources": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ediscovery.unifiedGroupSource"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.ediscovery.unifiedGroupSource",
  "id": "7f6666c8-66c8-7f66-c866-667fc866667f",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "includedSources": "String"
}
```

