---
title: "Update columnDefinition"
description: "Update the properties of a columnDefinition object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update columnDefinition
Namespace: microsoft.graph

Update the properties of a [columnDefinition](../resources/columndefinition.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
PATCH /drive/list/columns/{columnDefinitionId}
PATCH /sites/{sitesId}/columns/{columnDefinitionId}
PATCH /drives/{drivesId}/list/columns/{columnDefinitionId}
PATCH /sites/{sitesId}/externalColumns/{columnDefinitionId}
PATCH /drive/list/contentTypes/{contentTypeId}/columns/{columnDefinitionId}
PATCH /drive/list/contentTypes/{contentTypeId}/columnPositions/{columnDefinitionId}
PATCH /drives/{drivesId}/list/contentTypes/{contentTypeId}/columns/{columnDefinitionId}
PATCH /drives/{drivesId}/list/contentTypes/{contentTypeId}/columnPositions/{columnDefinitionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [columnDefinition](../resources/columndefinition.md) object.

The following table shows the properties that are required when you update the [columnDefinition](../resources/columndefinition.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|boolean|[booleanColumn](../resources/booleancolumn.md)|**TODO: Add Description**|
|calculated|[calculatedColumn](../resources/calculatedcolumn.md)|**TODO: Add Description**|
|choice|[choiceColumn](../resources/choicecolumn.md)|**TODO: Add Description**|
|columnGroup|String|**TODO: Add Description**|
|columnValidation|[columnValidation](../resources/columnvalidation.md)|**TODO: Add Description**|
|contentApprovalStatus|[contentApprovalStatusColumn](../resources/contentapprovalstatuscolumn.md)|**TODO: Add Description**|
|currency|[currencyColumn](../resources/currencycolumn.md)|**TODO: Add Description**|
|dateTime|[dateTimeColumn](../resources/datetimecolumn.md)|**TODO: Add Description**|
|defaultValue|[defaultColumnValue](../resources/defaultcolumnvalue.md)|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|enforceUniqueValues|Boolean|**TODO: Add Description**|
|geolocation|[geolocationColumn](../resources/geolocationcolumn.md)|**TODO: Add Description**|
|hidden|Boolean|**TODO: Add Description**|
|hyperlinkOrPicture|[hyperlinkOrPictureColumn](../resources/hyperlinkorpicturecolumn.md)|**TODO: Add Description**|
|indexed|Boolean|**TODO: Add Description**|
|isDeletable|Boolean|**TODO: Add Description**|
|isReorderable|Boolean|**TODO: Add Description**|
|isSealed|Boolean|**TODO: Add Description**|
|propagateChanges|Boolean|**TODO: Add Description**|
|lookup|[lookupColumn](../resources/lookupcolumn.md)|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|number|[numberColumn](../resources/numbercolumn.md)|**TODO: Add Description**|
|personOrGroup|[personOrGroupColumn](../resources/personorgroupcolumn.md)|**TODO: Add Description**|
|readOnly|Boolean|**TODO: Add Description**|
|required|Boolean|**TODO: Add Description**|
|term|[termColumn](../resources/termcolumn.md)|**TODO: Add Description**|
|thumbnail|[thumbnailColumn](../resources/thumbnailcolumn.md)|**TODO: Add Description**|
|type|columnTypes|**TODO: Add Description**. Possible values are: `note`, `text`, `choice`, `multichoice`, `number`, `currency`, `dateTime`, `lookup`, `boolean`, `user`, `url`, `calculated`, `location`, `geolocation`, `term`, `multiterm`, `thumbnail`, `approvalStatus`, `unknownFutureValue`.|
|text|[textColumn](../resources/textcolumn.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [columnDefinition](../resources/columndefinition.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_columndefinition"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/drive/list/columns/{columnDefinitionId}
Content-Type: application/json
Content-length: 1714

{
  "@odata.type": "#microsoft.graph.columnDefinition",
  "boolean": {
    "@odata.type": "microsoft.graph.booleanColumn"
  },
  "calculated": {
    "@odata.type": "microsoft.graph.calculatedColumn"
  },
  "choice": {
    "@odata.type": "microsoft.graph.choiceColumn"
  },
  "columnGroup": "String",
  "columnValidation": {
    "@odata.type": "microsoft.graph.columnValidation"
  },
  "contentApprovalStatus": {
    "@odata.type": "microsoft.graph.contentApprovalStatusColumn"
  },
  "currency": {
    "@odata.type": "microsoft.graph.currencyColumn"
  },
  "dateTime": {
    "@odata.type": "microsoft.graph.dateTimeColumn"
  },
  "defaultValue": {
    "@odata.type": "microsoft.graph.defaultColumnValue"
  },
  "description": "String",
  "displayName": "String",
  "enforceUniqueValues": "Boolean",
  "geolocation": {
    "@odata.type": "microsoft.graph.geolocationColumn"
  },
  "hidden": "Boolean",
  "hyperlinkOrPicture": {
    "@odata.type": "microsoft.graph.hyperlinkOrPictureColumn"
  },
  "indexed": "Boolean",
  "isDeletable": "Boolean",
  "isReorderable": "Boolean",
  "isSealed": "Boolean",
  "propagateChanges": "Boolean",
  "lookup": {
    "@odata.type": "microsoft.graph.lookupColumn"
  },
  "name": "String",
  "number": {
    "@odata.type": "microsoft.graph.numberColumn"
  },
  "personOrGroup": {
    "@odata.type": "microsoft.graph.personOrGroupColumn"
  },
  "readOnly": "Boolean",
  "required": "Boolean",
  "term": {
    "@odata.type": "microsoft.graph.termColumn"
  },
  "thumbnail": {
    "@odata.type": "microsoft.graph.thumbnailColumn"
  },
  "type": "String",
  "text": {
    "@odata.type": "microsoft.graph.textColumn"
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
  "@odata.type": "#microsoft.graph.columnDefinition",
  "id": "8ef6c514-c514-8ef6-14c5-f68e14c5f68e",
  "boolean": {
    "@odata.type": "microsoft.graph.booleanColumn"
  },
  "calculated": {
    "@odata.type": "microsoft.graph.calculatedColumn"
  },
  "choice": {
    "@odata.type": "microsoft.graph.choiceColumn"
  },
  "columnGroup": "String",
  "columnValidation": {
    "@odata.type": "microsoft.graph.columnValidation"
  },
  "contentApprovalStatus": {
    "@odata.type": "microsoft.graph.contentApprovalStatusColumn"
  },
  "currency": {
    "@odata.type": "microsoft.graph.currencyColumn"
  },
  "dateTime": {
    "@odata.type": "microsoft.graph.dateTimeColumn"
  },
  "defaultValue": {
    "@odata.type": "microsoft.graph.defaultColumnValue"
  },
  "description": "String",
  "displayName": "String",
  "enforceUniqueValues": "Boolean",
  "geolocation": {
    "@odata.type": "microsoft.graph.geolocationColumn"
  },
  "hidden": "Boolean",
  "hyperlinkOrPicture": {
    "@odata.type": "microsoft.graph.hyperlinkOrPictureColumn"
  },
  "indexed": "Boolean",
  "isDeletable": "Boolean",
  "isReorderable": "Boolean",
  "isSealed": "Boolean",
  "propagateChanges": "Boolean",
  "lookup": {
    "@odata.type": "microsoft.graph.lookupColumn"
  },
  "name": "String",
  "number": {
    "@odata.type": "microsoft.graph.numberColumn"
  },
  "personOrGroup": {
    "@odata.type": "microsoft.graph.personOrGroupColumn"
  },
  "readOnly": "Boolean",
  "required": "Boolean",
  "term": {
    "@odata.type": "microsoft.graph.termColumn"
  },
  "thumbnail": {
    "@odata.type": "microsoft.graph.thumbnailColumn"
  },
  "type": "String",
  "text": {
    "@odata.type": "microsoft.graph.textColumn"
  }
}
```

