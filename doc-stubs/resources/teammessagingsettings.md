---
title: "teamMessagingSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamMessagingSettings resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowChannelMentions|Boolean|**TODO: Add Description**|
|allowOwnerDeleteMessages|Boolean|**TODO: Add Description**|
|allowTeamMentions|Boolean|**TODO: Add Description**|
|allowUserDeleteMessages|Boolean|**TODO: Add Description**|
|allowUserEditMessages|Boolean|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamMessagingSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamMessagingSettings",
  "allowUserEditMessages": "Boolean",
  "allowUserDeleteMessages": "Boolean",
  "allowOwnerDeleteMessages": "Boolean",
  "allowTeamMentions": "Boolean",
  "allowChannelMentions": "Boolean"
}
```

