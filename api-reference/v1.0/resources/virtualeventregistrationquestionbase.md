---
title: "virtualEventRegistrationQuestionBase resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualEventRegistrationQuestionBase resource type

Namespace: microsoft.graph



**TODO: Add Description**
This is an abstract type.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualeventregistrationconfiguration-list-questions.md)|[virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) collection|Get a list of the [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) objects and their properties.|
|[Create](../api/virtualeventregistrationconfiguration-post-questions.md)|[virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md)|Create a new [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) object.|
|[Get](../api/virtualeventregistrationquestionbase-get.md)|[virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md)|Read the properties and relationships of a [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) object.|
|[Update](../api/virtualeventregistrationquestionbase-update.md)|[virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md)|Update the properties of a [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) object.|
|[Delete](../api/virtualeventregistrationconfiguration-delete-questions.md)|None|Delete a [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isRequired|Boolean|**TODO: Add Description**|

## Relationships
None.

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
  "id": "String (identifier)",
  "displayName": "String",
  "isRequired": "Boolean"
}
```

