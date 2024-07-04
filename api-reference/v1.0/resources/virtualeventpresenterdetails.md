---
title: "virtualEventPresenterDetails resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualEventPresenterDetails resource type

Namespace: microsoft.graph



**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bio|[itemBody](../resources/itembody.md)|**TODO: Add Description**|
|company|String|**TODO: Add Description**|
|jobTitle|String|**TODO: Add Description**|
|linkedInProfileWebUrl|String|**TODO: Add Description**|
|personalSiteWebUrl|String|**TODO: Add Description**|
|photo|Stream|**TODO: Add Description**|
|twitterProfileWebUrl|String|**TODO: Add Description**|

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
  "photo": "Stream",
  "company": "String",
  "jobTitle": "String",
  "bio": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "personalSiteWebUrl": "String",
  "linkedInProfileWebUrl": "String",
  "twitterProfileWebUrl": "String"
}
```

