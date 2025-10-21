---
title: "mediaContentRatingNewZealand resource type"
description: "Intune Deviceconfig Mediacontentratingnewzealand Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# mediaContentRatingNewZealand resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Properties
|Property|Type|Description|
|:---|:---|:---|
|movieRating|[ratingNewZealandMoviesType](../resources/intune-deviceconfig-ratingnewzealandmoviestype.md)|Movies rating selected for New Zealand. Possible values are: `allAllowed`, `allBlocked`, `general`, `parentalGuidance`, `mature`, `agesAbove13`, `agesAbove15`, `agesAbove16`, `agesAbove18`, `restricted`, `agesAbove16Restricted`.|
|tvRating|[ratingNewZealandTelevisionType](../resources/intune-deviceconfig-ratingnewzealandtelevisiontype.md)|TV rating selected for New Zealand. Possible values are: `allAllowed`, `allBlocked`, `general`, `parentalGuidance`, `adults`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mediaContentRatingNewZealand"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mediaContentRatingNewZealand",
  "movieRating": "String",
  "tvRating": "String"
}
```