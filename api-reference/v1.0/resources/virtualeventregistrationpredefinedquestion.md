---
title: "virtualEventRegistrationPredefinedQuestion resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualEventRegistrationPredefinedQuestion resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualeventregistrationpredefinedquestion-list.md)|[virtualEventRegistrationPredefinedQuestion](../resources/virtualeventregistrationpredefinedquestion.md) collection|Get a list of the [virtualEventRegistrationPredefinedQuestion](../resources/virtualeventregistrationpredefinedquestion.md) objects and their properties.|
|[Get](../api/virtualeventregistrationpredefinedquestion-get.md)|[virtualEventRegistrationPredefinedQuestion](../resources/virtualeventregistrationpredefinedquestion.md)|Read the properties and relationships of a [virtualEventRegistrationPredefinedQuestion](../resources/virtualeventregistrationpredefinedquestion.md) object.|
|[Update](../api/virtualeventregistrationpredefinedquestion-update.md)|[virtualEventRegistrationPredefinedQuestion](../resources/virtualeventregistrationpredefinedquestion.md)|Update the properties of a [virtualEventRegistrationPredefinedQuestion](../resources/virtualeventregistrationpredefinedquestion.md) object.|
|[Delete](../api/virtualeventregistrationpredefinedquestion-delete.md)|None|Delete a [virtualEventRegistrationPredefinedQuestion](../resources/virtualeventregistrationpredefinedquestion.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isRequired|Boolean|**TODO: Add Description** Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).|
|label|virtualEventRegistrationPredefinedQuestionLabel|**TODO: Add Description**.The possible values are: `street`, `city`, `state`, `postalCode`, `countryOrRegion`, `industry`, `jobTitle`, `organization`, `unknownFutureValue`.|

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
  "id": "String (identifier)",
  "displayName": "String",
  "isRequired": "Boolean",
  "label": "String"
}
```

