---
title: "secureScoreControlStateUpdate resource type"
description: "This resource contains history of control states updated by user (control states include Default, Ignored, ThirdParty, Reviewed)."
localization_priority: Normal
---
 #  secureScoreControlStateUpdate resource type
Contains the history of the control states updated by the user (control states include Default, Ignored, ThirdParty, Reviewed).

## Properties

|Property |Type |Description |
|:--|:--|:--|
|assignedTo|String|Assign the control to the user who will take the action |
|comment|String|Provides optional comment about the control |
|state|String|State of the control can be modified using PATCH command(Ex: ignored, thirdParty etc) |
|updatedBy|String|ID of the user who updated tenant state |
|updatedDateTime|DateTimeOffset?|Time at which control state was updated |
 ## JSON representation
 The following is a JSON representation of the resource.
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
