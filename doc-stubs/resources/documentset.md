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
|shouldPrefixNameToFile|Boolean|**TODO: Add Description**|
|welcomePageUrl|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|sharedColumns|[columnDefinition](../resources/columndefinition.md) collection|**TODO: Add Description**|
|welcomePageColumns|[columnDefinition](../resources/columndefinition.md) collection|**TODO: Add Description**|

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
  "welcomePageUrl": "String"
}
```

