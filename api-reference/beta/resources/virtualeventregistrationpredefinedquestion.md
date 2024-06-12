---
title: "virtualEventRegistrationPredefinedQuestion resource type"
description: "Represents a predefined registration question associated with a virtual event."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
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
|label|[virtualEventRegistrationPredefinedQuestionLabel](#virtualeventregistrationpredefinedquestionlabel-values)|Label of the predefined registration question.|
|displayName|String|Display name of the registration question. Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).|
|id|String|Unique identifier of the registration question. Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).|
|isRequired|Boolean| Indicates whether the question is required to answer. Default value is `false`. Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).|

### virtualEventRegistrationPredefinedQuestionLabel values

The following shows the different information that can be obtained through predefined registration questions.  
| Value | Description |
| ----- | ----------- |
| street | The registration question accepts single-line text. |
| city | The registration question accepts single-line text. |
| state | The registration question accepts single-line text. |
| postalCode | The registration question accepts single-line text. |
| countryOrRegion | The registration question accepts single-line text. |
| industry | The registration question accepts single-line text. |
| jobTitle | The registration question accepts single-line text. |
| organization | The registration question accepts single-line text. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

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
