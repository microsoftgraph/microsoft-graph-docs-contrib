---
title: "virtualEventRegistrationPredefinedQuestion resource type"
description: "Represents a predefined registration question associated with a virtual event."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# virtualEventRegistrationPredefinedQuestion resource type

Namespace: microsoft.graph

Represents a predefined registration question associated with a [virtualEventRegistration](../resources/virtualeventregistration.md).

Currently, [virtualEventRegistration](../resources/virtualeventregistration.md) only supports [virtualEventWebinar](../resources/virtualeventwebinar.md). 

Inherits from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|label|virtualEventRegistrationPredefinedQuestionLabel|Label of the predefined registration question. It accepts a single line of text: `street`, `city`, `state`, `postalCode`, `countryOrRegion`, `industry`, `jobTitle`, `organization`, and `unknownFutureValue`. |

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventRegistrationPredefinedQuestion",
  "baseType": "microsoft.graph.virtualEventRegistrationQuestionBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationPredefinedQuestion",
  "label": "String",
  "displayName": "String",  
  "id": "String (identifier)",
  "isRequired": "Boolean"
}
```
