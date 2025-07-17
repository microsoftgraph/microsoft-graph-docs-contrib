---
title: secureScoreControlStateUpdate resource type
description: "This resource contains history of control states updated by user (control states include Default, Ignored, ThirdParty, Reviewed)."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: security
author: "preetikr"
ms.date: 07/22/2024
---

# secureScoreControlStateUpdate resource type

Contains the history of the control states updated by the user (control states include Default, Ignored, ThirdParty, Reviewed).

## Properties

|Property |Type |Description |
|:--|:--|:--|
|assignedTo | string | Assign the control to the user who will take the action |
|comment | string | Provides optional comment about the control |
|state | string | State of the control can be modified using PATCH command(Ex: ignored, thirdParty etc) |
|updatedBy | string |ID of the user who updated tenant state |
|updatedDateTime | DateTimeOffset |Time at which control state was updated |

 ## JSON representation
 The following JSON representation shows the resource type.
 <!-- {
  "blockType": "resource",
  "optionalProperties": [
   ],
  "@odata.type": "microsoft.graph.secureScoreControlStateUpdate"
}-->
 ```json
{
  "assignedTo": "String",
  "comment": "string",
  "state": "string",
  "updatedBy": "string",
  "updatedDateTime": "DateTimeOffset"
}
 ```
 <!-- {
  "type": "#page.annotation",
  "description": "secureScoreControlStateUpdate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


