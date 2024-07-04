---
title: "virtualEventRegistrationCustomQuestion resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualEventRegistrationCustomQuestion resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualeventregistrationcustomquestion-list.md)|[virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) collection|Get a list of the [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) objects and their properties.|
|[Get](../api/virtualeventregistrationcustomquestion-get.md)|[virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md)|Read the properties and relationships of a [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) object.|
|[Update](../api/virtualeventregistrationcustomquestion-update.md)|[virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md)|Update the properties of a [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) object.|
|[Delete](../api/virtualeventregistrationcustomquestion-delete.md)|None|Delete a [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|answerChoices|String collection|**TODO: Add Description**|
|answerInputType|virtualEventRegistrationQuestionAnswerInputType|**TODO: Add Description**.The possible values are: `text`, `multilineText`, `singleChoice`, `multiChoice`, `boolean`, `unknownFutureValue`.|
|displayName|String|**TODO: Add Description** Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isRequired|Boolean|**TODO: Add Description** Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventRegistrationCustomQuestion",
  "baseType": "microsoft.graph.virtualEventRegistrationQuestionBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationCustomQuestion",
  "id": "String (identifier)",
  "displayName": "String",
  "isRequired": "Boolean",
  "answerChoices": [
    "String"
  ],
  "answerInputType": "String"
}
```

