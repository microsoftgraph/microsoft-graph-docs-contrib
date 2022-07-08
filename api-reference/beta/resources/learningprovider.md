---
title: "learningProvider resource type"
description: "**TODO: Add Description**"
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-experience"
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
|displayName|String|**Display Name to be shown in Viva Learning**|
|isEnabled|Boolean|**State of the provider**|
|loginWebUrl|String|**Authentication Url to access the courses for the provider**|
|longLogoWebUrlForDarkTheme|String|**long logo url for the dark mode. Needs to be publicly accessible image. This image would be saved to the Blob storage of Viva Learning for rendering within Viva Learning app**|
|longLogoWebUrlForLightTheme|String|**long logo url for the light mode. Needs to be publicly accessible image. This image would be saved to the Blob storage of Viva Learning for rendering within Viva Learning app**|
|squareLogoWebUrlForDarkTheme|String|**square logo url for the dark mode. Needs to be publicly accessible image. This image would be saved to the Blob storage of Viva Learning for rendering within Viva Learning app**|
|squareLogoWebUrlForLightTheme|String|**square logo url for the light mode. Needs to be publicly accessible image. This image would be saved to the Blob storage of Viva Learning for rendering within Viva Learning app**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|learningContents|[learningContent](../resources/learningcontent.md) collection|**Learning catalog items for the Provider**|

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

