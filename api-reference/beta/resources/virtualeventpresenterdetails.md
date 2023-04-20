---
title: "virtualEventPresenterDetails resource type"
description: "Detail information about a virtual event presenter."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventPresenterDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Detail information of a virtual event presenter.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|bio|[itemBody](../resources/itembody.md)|Bio of the presenter.|
|company|String|The presenter's company name.|
|jobTitle|String|The presenter's job title.|
|linkedInProfileWebUrl|String|The presenter's LinkedIn profile URL.|
|personalSiteWebUrl|String|The presenter's personal website URL.|
|twitterProfileWebUrl|String|The presenter's Twitter profile URL.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.virtualEventPresenterDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventPresenterDetails",
  "bio": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "company": "String",
  "jobTitle": "String",
  "linkedInProfileWebUrl": "String",
  "personalSiteWebUrl": "String",
  "twitterProfileWebUrl": "String"
}
```
