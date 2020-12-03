---
title: "documentSet resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# documentSet resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedContentTypes|[contentTypeInfo](../resources/contenttypeinfo.md) collection|**TODO: Add Description**|
|defaultContents|[documentSetContent](../resources/documentsetcontent.md) collection|**TODO: Add Description**|
|propagateWelcomePageChanges|Boolean|**TODO: Add Description**|
|sharedColumns|[columnDefinition](../resources/columndefinition.md) collection|**TODO: Add Description**|
|shouldPrefixNameToFile|Boolean|**TODO: Add Description**|
|welcomePageColumns|[columnDefinition](../resources/columndefinition.md) collection|**TODO: Add Description**|
|welcomePageUrl|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.documentSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.documentSet",
  "allowedContentTypes": [
    {
      "@odata.type": "microsoft.graph.contentTypeInfo"
    }
  ],
  "defaultContents": [
    {
      "@odata.type": "microsoft.graph.documentSetContent"
    }
  ],
  "propagateWelcomePageChanges": "Boolean",
  "shouldPrefixNameToFile": "Boolean",
  "welcomePageUrl": "String",
  "sharedColumns": [
    {
      "@odata.type": "#microsoft.graph.columnDefinition",
      "id": "String (identifier)",
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
  ],
  "welcomePageColumns": [
    {
      "@odata.type": "#microsoft.graph.columnDefinition",
      "id": "String (identifier)",
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
  ]
}
```

