---
title: "virtualEventRegistration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualEventRegistration resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List virtualEventRegistrations](../api/virtualeventwebinar-list-registrations.md)|[virtualEventRegistration](../resources/virtualeventregistration.md) collection|Get a list of the [virtualEventRegistration](../resources/virtualeventregistration.md) objects and their properties.|
|[Create virtualEventRegistration](../api/virtualeventwebinar-post-registrations.md)|[virtualEventRegistration](../resources/virtualeventregistration.md)|Create a new [virtualEventRegistration](../resources/virtualeventregistration.md) object.|
|[Get virtualEventRegistration](../api/virtualeventregistration-get.md)|[virtualEventRegistration](../resources/virtualeventregistration.md)|Read the properties and relationships of a [virtualEventRegistration](../resources/virtualeventregistration.md) object.|
|[Update virtualEventRegistration](../api/virtualeventregistration-update.md)|[virtualEventRegistration](../resources/virtualeventregistration.md)|Update the properties of a [virtualEventRegistration](../resources/virtualeventregistration.md) object.|
|[Delete virtualEventRegistration](../api/virtualeventwebinar-delete-registrations.md)|None|Delete a [virtualEventRegistration](../resources/virtualeventregistration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|cancelationDateTime|DateTimeOffset|**TODO: Add Description**|
|email|String|**TODO: Add Description**|
|firstName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastName|String|**TODO: Add Description**|
|registrationDateTime|DateTimeOffset|**TODO: Add Description**|
|registrationQuestionAnswers|[virtualEventRegistrationQuestionAnswer](../resources/virtualeventregistrationquestionanswer.md) collection|**TODO: Add Description**|
|status|virtualEventAttendeeRegistrationStatus|**TODO: Add Description**.The possible values are: `registered`, `canceled`, `waitlisted`, `pendingApproval`, `rejectedByOrganizer`, `unknownFutureValue`.|
|userId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventRegistration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventRegistration",
  "id": "String (identifier)",
  "userId": "String",
  "firstName": "String",
  "lastName": "String",
  "email": "String",
  "status": "String",
  "registrationDateTime": "String (timestamp)",
  "cancelationDateTime": "String (timestamp)",
  "registrationQuestionAnswers": [
    {
      "@odata.type": "microsoft.graph.virtualEventRegistrationQuestionAnswer"
    }
  ]
}
```

