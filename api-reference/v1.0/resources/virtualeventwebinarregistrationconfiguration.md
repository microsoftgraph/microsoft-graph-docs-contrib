---
title: "virtualEventWebinarRegistrationConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualEventWebinarRegistrationConfiguration resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualeventwebinar-list-registrationconfiguration.md)|[virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) collection|Get a list of the [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) objects and their properties.|
|[Create](../api/virtualeventwebinar-post-registrationconfiguration.md)|[virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md)|Create a new [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) object.|
|[Get](../api/virtualeventwebinarregistrationconfiguration-get.md)|[virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md)|Read the properties and relationships of a [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) object.|
|[Update](../api/virtualeventwebinarregistrationconfiguration-update.md)|[virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md)|Update the properties of a [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) object.|
|[Delete](../api/virtualeventwebinar-delete-registrationconfiguration.md)|None|Delete a [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) object.|
|[List questions](../api/virtualeventwebinarregistrationconfiguration-list-questions.md)|[virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) collection|Get the virtualEventRegistrationQuestionBase resources from the questions navigation property.|
|[Create virtualEventRegistrationQuestionBase](../api/virtualeventwebinarregistrationconfiguration-post-questions.md)|[virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md)|Create a new virtualEventRegistrationQuestionBase object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|capacity|Int32|**TODO: Add Description** Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isManualApprovalEnabled|Boolean|**TODO: Add Description**|
|isWaitlistEnabled|Boolean|**TODO: Add Description**|
|registrationWebUrl|String|**TODO: Add Description** Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|questions|[virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventWebinarRegistrationConfiguration",
  "baseType": "microsoft.graph.virtualEventRegistrationConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventWebinarRegistrationConfiguration",
  "id": "String (identifier)",
  "registrationWebUrl": "String",
  "capacity": "Integer",
  "isWaitlistEnabled": "Boolean",
  "isManualApprovalEnabled": "Boolean"
}
```

