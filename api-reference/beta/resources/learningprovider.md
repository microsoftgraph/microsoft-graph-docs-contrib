---
title: "learningProvider resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# learningProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List learningProviders](../api/employeeexperience-list-learningproviders.md)|[learningProvider](../resources/learningprovider.md) collection|Get a list of the [learningProvider](../resources/learningprovider.md) objects and their properties.|
|[Create learningProvider](../api/employeeexperience-post-learningproviders.md)|[learningProvider](../resources/learningprovider.md)|Create a new [learningProvider](../resources/learningprovider.md) object.|
|[Get learningProvider](../api/learningprovider-get.md)|[learningProvider](../resources/learningprovider.md)|Read the properties and relationships of a [learningProvider](../resources/learningprovider.md) object.|
|[Update learningProvider](../api/learningprovider-update.md)|[learningProvider](../resources/learningprovider.md)|Update the properties of a [learningProvider](../resources/learningprovider.md) object.|
|[Delete learningProvider](../api/employeeexperience-delete-learningproviders.md)|None|Deletes a [learningProvider](../resources/learningprovider.md) object.|
|[List learningContents](../api/learningprovider-list-learningcontents.md)|[learningContent](../resources/learningcontent.md) collection|Get the learningContent resources from the learningContents navigation property.|
|[Create learningContent](../api/learningprovider-post-learningcontents.md)|[learningContent](../resources/learningcontent.md)|Create a new learningContent object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|isEnabled|Boolean|**TODO: Add Description**|
|loginWebUrl|String|**TODO: Add Description**|
|longLogoWebUrlForDarkTheme|String|**TODO: Add Description**|
|longLogoWebUrlForLightTheme|String|**TODO: Add Description**|
|squareLogoWebUrlForDarkTheme|String|**TODO: Add Description**|
|squareLogoWebUrlForLightTheme|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|learningContents|[learningContent](../resources/learningcontent.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.learningProvider",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.learningProvider",
  "displayName": "String",
  "isEnabled": "Boolean",
  "loginWebUrl": "String",
  "longLogoWebUrlForDarkTheme": "String",
  "longLogoWebUrlForLightTheme": "String",
  "squareLogoWebUrlForDarkTheme": "String",
  "squareLogoWebUrlForLightTheme": "String"
}
```

