---
title: "teamMemberSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamMemberSettings resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowAddRemoveApps|Boolean|**TODO: Add Description**|
|allowCreatePrivateChannels|Boolean|**TODO: Add Description**|
|allowCreateUpdateChannels|Boolean|**TODO: Add Description**|
|allowCreateUpdateRemoveConnectors|Boolean|**TODO: Add Description**|
|allowCreateUpdateRemoveTabs|Boolean|**TODO: Add Description**|
|allowDeleteChannels|Boolean|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamMemberSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamMemberSettings",
  "allowCreateUpdateChannels": "Boolean",
  "allowCreatePrivateChannels": "Boolean",
  "allowDeleteChannels": "Boolean",
  "allowAddRemoveApps": "Boolean",
  "allowCreateUpdateRemoveTabs": "Boolean",
  "allowCreateUpdateRemoveConnectors": "Boolean"
}
```

