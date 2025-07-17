---
title: "virtualEventRegistrationPredefinedQuestion resource type"
description: "Represents a predefined registration question associated with a virtual event."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 06/13/2024
---

# virtualEventRegistrationPredefinedQuestion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a predefined registration question associated with a [virtualEventRegistration](../resources/virtualeventregistration.md).

Currently, [virtualEventRegistration](../resources/virtualeventregistration.md) only supports [virtualEventWebinar](../resources/virtualeventwebinar.md). 

Inherits from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the registration question. Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).|
|id|String|Unique identifier of the registration question. Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).|
|isRequired|Boolean| Indicates whether an answer to the question is required. The default value is `false`. Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).|
|label|virtualEventRegistrationPredefinedQuestionLabel|Label of the predefined registration question. The following label values accept a single line  of text: `street`, `city`, `state`, `postalCode`, `countryOrRegion`, `industry`, `jobTitle`, and `organization`. `unknownFutureValue` is an evolvable enumeration sentinel value; do not use this label.|

## Relationships
None.

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
