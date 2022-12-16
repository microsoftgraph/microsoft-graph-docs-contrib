---
title: "payloadCoachmark resource type"
description: "Represents the payload coachmark detail of a payload."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# payloadCoachmark resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the payload coachmark detail of a payload.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|indicator|String|Coachmark indicator.|
|description|String|Description about the coachmark.|
|language|String|Coachmark language.|
|order|String|Coachmark order.|
|isValid|String|Tells if the coachmark is valid or not.|
|coachmarkLocation|(../resources/coachmarklocation.md)|Coachmark location.|

## Relationships
None.


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.payloadCoachmark"
}
-->
``` json
{
"@odata.type": "#microsoft.graph.payloadCoachmark",
"indicator": "URL hyperlinking",
"description": "URL hyperlinking hides the true URL behind text; the text can also look like another link",
"language": "en",
"order": 0,
"isValid": "true",
"location": {
	"offset": 144,
	"length": 6,
	"type": "messageBody"  
	}
}
```

