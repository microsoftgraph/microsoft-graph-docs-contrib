---
title: "virtualEventPresenterDetails resource type"
description: "Represents detail information about a virtual event presenter."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 05/21/2024
---

# virtualEventPresenterDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detail information about a virtual event presenter.

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

## Relationships
None.

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
