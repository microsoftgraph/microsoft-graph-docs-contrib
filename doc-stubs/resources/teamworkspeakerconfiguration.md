---
title: "teamworkSpeakerConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamworkSpeakerConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isCommunicationSpeakerOptional|Boolean|**TODO: Add Description**|
|isSpeakerOptional|Boolean|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|defaultCommunicationSpeaker|[teamworkPeripheral](../resources/teamworkperipheral.md)|**TODO: Add Description**|
|defaultSpeaker|[teamworkPeripheral](../resources/teamworkperipheral.md)|**TODO: Add Description**|
|speakers|[teamworkPeripheral](../resources/teamworkperipheral.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkSpeakerConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkSpeakerConfiguration",
  "isSpeakerOptional": "Boolean",
  "isCommunicationSpeakerOptional": "Boolean"
}
```

