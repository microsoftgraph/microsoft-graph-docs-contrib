---
title: "cloudCommunications resource type"
description: "Represents a container that exposes navigation properties for cloud communication resources."
author: "aditijha"
ms.date: 06/19/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# cloudCommunications resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container that exposes navigation properties for cloud communication resources.

Inherits from [entity](../resources/entity.md)

## Methods

None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|adhocCalls|[adhocCall](../resources/adhoccall.md) collection|A collection of ad hoc calls in Teams. |
|onlineMeetingConversations|[onlineMeetingEngagementConversation](../resources/onlinemeetingengagementconversation.md) collection|A collection of structured question-and-answer (Q&A) threads in Teams directly associated with online meetings.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudCommunications",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudCommunications"
}
```

