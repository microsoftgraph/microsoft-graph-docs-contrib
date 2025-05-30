---
title: "engagementConversationMessageMention resource type"
description: "Represents a mention within a Viva Engage conversation message."
author: "aditijha4"
ms.date: 05/21/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage*"
doc_type: resourcePageType
---

# engagementConversationMessageMention resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a mention within a Viva Engage conversation message.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The mention id|
|mentioned|[engagementIdentitySet](../resources/engagementidentityset.md)|The identity that is mentioned|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.engagementConversationMessageMention"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.engagementConversationMessageMention",
  "id": "String",
  "mentioned": {
    "@odata.type": "microsoft.graph.engagementIdentitySet"
  }
}
```

