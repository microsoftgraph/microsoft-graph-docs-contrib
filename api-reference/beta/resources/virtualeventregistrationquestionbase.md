---
title: "virtualEventRegistrationQuestionBase resource type"
description: "The abstract base type for a virtual event registration question."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventRegistrationQuestionBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The abstract base type for a virtual event registration question.

Base type of [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) and [virtualEventRegistrationPredefinedQuestion](../resources/virtualeventregistrationpredefinedquestion.md).

Inherits from [entity](../resources/entity.md).

> [!TIP]
> This is an abstract type and can't be used directly. Use the derived types [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) and [virtualEventRegistrationPredefinedQuestion](../resources/virtualeventregistrationpredefinedquestion.md) instead.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List questions](../api/virtualeventregistration-list-questions.md)|[virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) collection or [virtualEventRegistrationPredefinedQuestion](../resources/virtualeventregistrationpredefinedquestion.md) collection|Get a list of all [registration](../resources/virtualeventregistration.md) questions for a [webinar](../resources/virtualeventwebinar.md).|
## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the registration question.|
|id|String|Unique identifier of the registration question. Inherited from [entity](../resources/entity.md).|
|isRequired|Boolean| Indicates whether an answer to the question is required. Default value is `false`.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventRegistrationQuestionBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationQuestionBase",
  "displayName": "String",  
  "id": "String (identifier)",
  "isRequired": "Boolean"
}
```
