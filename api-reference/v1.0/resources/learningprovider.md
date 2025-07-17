---
title: "learningProvider resource type"
description: "Represents an entity that holds the details about a learning provider in Viva learning."
author: "malabikaroy"
ms.localizationpriority: medium
ms.subservice: "viva-learning"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# learningProvider resource type

Namespace: microsoft.graph

Represents an entity that holds the details about a learning provider in Viva learning.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/employeeexperience-list-learningproviders.md)|[learningProvider](../resources/learningprovider.md) collection|Get a list of the [learningProvider](../resources/learningprovider.md) resources registered in Viva Learning for a tenant.|
|[Create](../api/employeeexperience-post-learningproviders.md)|[learningProvider](../resources/learningprovider.md)|Create a new [learningProvider](../resources/learningprovider.md) object and register it with Viva Learning using the specified display name and logos for different themes.|
|[Get](../api/learningprovider-get.md)|[learningProvider](../resources/learningprovider.md)|Read the properties and relationships of a [learningProvider](../resources/learningprovider.md) object.|
|[Update](../api/learningprovider-update.md)|[learningProvider](../resources/learningprovider.md)|Update the properties of a [learningProvider](../resources/learningprovider.md) object.|
|[Delete](../api/employeeexperience-delete-learningproviders.md)|None|Delete a [learningProvider](../resources/learningprovider.md) resource and remove its registration in Viva Learning for a tenant.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name that appears in Viva Learning. Required.|
|id|String|The unique identifier for the learning provider. Required. Inherited from [entity](../resources/entity.md).|
|isCourseActivitySyncEnabled|Boolean|Indicates whether a provider can ingest learning course activity records. The default value is `false`. Set to `true` to make learningCourseActivities available for this provider.|
|loginWebUrl|String|Authentication URL to access the courses for the provider. Optional.|
|longLogoWebUrlForDarkTheme|String|The long logo URL for the dark mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.|
|longLogoWebUrlForLightTheme|String|The long logo URL for the light mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.|
|squareLogoWebUrlForDarkTheme|String|The square logo URL for the dark mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.|
|squareLogoWebUrlForLightTheme|String|The square logo URL for the light mode that needs to be a publicly accessible image. This image would be saved to the blob storage of Viva Learning for rendering within the Viva Learning app. Required.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|learningContents|[learningContent](../resources/learningcontent.md) collection|Learning catalog items for the provider.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.learningProvider",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.learningProvider",
  "displayName": "String",
  "id": "String (identifier)",
  "loginWebUrl": "String",
  "longLogoWebUrlForDarkTheme": "String",
  "longLogoWebUrlForLightTheme": "String",
  "squareLogoWebUrlForDarkTheme": "String",
  "squareLogoWebUrlForLightTheme": "String",
  "isCourseActivitySyncEnabled": "Boolean"
}
```
