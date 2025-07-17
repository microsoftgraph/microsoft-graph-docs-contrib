---
title: "secureScoreControlStateUpdate resource type"
description: "This resource contains the history of the control states updated by user (control states include Default, Ignored, ThirdParty, Reviewed)."
ms.localizationpriority: medium
author: preetikr
ms.subservice: security
doc_type: resourcePageType
ms.date: 07/22/2024
---
#  secureScoreControlStateUpdate resource type

Namespace: microsoft.graph

Contains the history of the control states updated by the user (control states include Default, Ignored, ThirdParty, Reviewed).

## Properties

|Property |Type |Description |
|:--|:--|:--|
|assignedTo|String|Assigns the control to the user who will take the action. |
|comment|String|Provides optional comment about the control. |
|state|String|State of the control, which can be modified via a PATCH command (for example, ignored, thirdParty). |
|updatedBy|String|ID of the user who updated tenant state. |
|updatedDateTime|DateTimeOffset|Time at which the control state was updated. |

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
  "comment": "String",
  "state": "String",
  "updatedBy": "String",
  "updatedDateTime": "String (timestamp)"
}
 ```
 <!-- {
  "type": "#page.annotation",
  "description": "secureScoreControlStateUpdate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

