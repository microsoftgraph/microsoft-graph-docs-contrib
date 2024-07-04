---
title: "virtualEventRegistrationConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualEventRegistrationConfiguration resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualeventregistrationconfiguration-list.md)|[virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md) collection|Get a list of the [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md) objects and their properties.|
|[Get](../api/virtualeventregistrationconfiguration-get.md)|[virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md)|Read the properties and relationships of a [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md) object.|
|[Update](../api/virtualeventregistrationconfiguration-update.md)|[virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md)|Update the properties of a [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md) object.|
|[Delete](../api/virtualeventregistrationconfiguration-delete.md)|None|Delete a [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md) object.|
|[List questions](../api/virtualeventregistrationconfiguration-list-questions.md)|[virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) collection|Get the virtualEventRegistrationQuestionBase resources from the questions navigation property.|
|[Create virtualEventRegistrationQuestionBase](../api/virtualeventregistrationconfiguration-post-questions.md)|[virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md)|Create a new virtualEventRegistrationQuestionBase object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|capacity|Int32|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|registrationWebUrl|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|questions|[virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventRegistrationConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationConfiguration",
  "id": "String (identifier)",
  "registrationWebUrl": "String",
  "capacity": "Integer"
}
```

