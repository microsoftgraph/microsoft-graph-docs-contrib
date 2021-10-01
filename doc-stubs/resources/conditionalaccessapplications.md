---
title: "conditionalAccessApplications resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# conditionalAccessApplications resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicationFilter|[conditionalAccessFilter](../resources/conditionalaccessfilter.md)|**TODO: Add Description**|
|excludeApplications|String collection|**TODO: Add Description**|
|includeApplications|String collection|**TODO: Add Description**|
|includeAuthenticationContextClassReferences|String collection|**TODO: Add Description**|
|includeUserActions|String collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conditionalAccessApplications"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conditionalAccessApplications",
  "applicationFilter": {
    "@odata.type": "microsoft.graph.conditionalAccessFilter"
  },
  "excludeApplications": [
    "String"
  ],
  "includeApplications": [
    "String"
  ],
  "includeAuthenticationContextClassReferences": [
    "String"
  ],
  "includeUserActions": [
    "String"
  ]
}
```

