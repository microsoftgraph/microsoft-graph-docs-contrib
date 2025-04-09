---
title: "virtualEventPresenterDetails resource type"
description: "Represents detailed information about a virtual event presenter."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# virtualEventPresenterDetails resource type

Namespace: microsoft.graph

Represents detailed information about a virtual event presenter.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|bio|[itemBody](../resources/itembody.md)|Bio of the presenter.|
|company|String|The presenter's company name.|
|jobTitle|String|The presenter's job title.|
|linkedInProfileWebUrl|String|The presenter's LinkedIn profile URL.|
|personalSiteWebUrl|String|The presenter's personal website URL.|
|photo|Stream|The content stream of the presenter's photo.|
|twitterProfileWebUrl|String|The presenter's Twitter profile URL.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.virtualEventPresenterDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventPresenterDetails",
  "bio": {"@odata.type": "microsoft.graph.itemBody"},
  "company": "String",
  "jobTitle": "String",
  "linkedInProfileWebUrl": "String",
  "personalSiteWebUrl": "String",
  "photo": "Stream",
  "twitterProfileWebUrl": "String"
}
```
