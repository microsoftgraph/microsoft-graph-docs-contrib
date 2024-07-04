---
title: "virtualEventRegistration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualEventRegistration resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualeventwebinar-list-registrations.md)|[virtualEventRegistration](../resources/virtualeventregistration.md) collection|Get a list of the [virtualEventRegistration](../resources/virtualeventregistration.md) objects and their properties.|
|[Create](../api/virtualeventwebinar-post-registrations.md)|[virtualEventRegistration](../resources/virtualeventregistration.md)|Create a new [virtualEventRegistration](../resources/virtualeventregistration.md) object.|
|[Get](../api/virtualeventregistration-get.md)|[virtualEventRegistration](../resources/virtualeventregistration.md)|Read the properties and relationships of a [virtualEventRegistration](../resources/virtualeventregistration.md) object.|
|[Update](../api/virtualeventregistration-update.md)|[virtualEventRegistration](../resources/virtualeventregistration.md)|Update the properties of a [virtualEventRegistration](../resources/virtualeventregistration.md) object.|
|[Delete](../api/virtualeventwebinar-delete-registrations.md)|None|Delete a [virtualEventRegistration](../resources/virtualeventregistration.md) object.|
|[cancel](../api/virtualeventregistration-cancel.md)|None|**TODO: Add Description**|
|[List sessions](../api/virtualeventregistration-list-sessions.md)|[virtualEventSession](../resources/virtualeventsession.md) collection|Get the virtualEventSession resources from the sessions navigation property.|
|[Add virtualEventSession](../api/virtualeventregistration-post-sessions.md)|[virtualEventSession](../resources/virtualeventsession.md)|Add sessions by posting to the sessions collection.|
|[Remove sessions](../api/virtualeventregistration-delete-sessions.md)|None|Remove a [virtualEventSession](../resources/virtualeventsession.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|cancelationDateTime|DateTimeOffset|**TODO: Add Description**|
|email|String|**TODO: Add Description**|
|firstName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastName|String|**TODO: Add Description**|
|preferredLanguage|String|**TODO: Add Description**|
|preferredTimezone|String|**TODO: Add Description**|
|registrationDateTime|DateTimeOffset|**TODO: Add Description**|
|registrationQuestionAnswers|[virtualEventRegistrationQuestionAnswer](../resources/virtualeventregistrationquestionanswer.md) collection|**TODO: Add Description**|
|status|virtualEventAttendeeRegistrationStatus|**TODO: Add Description**.The possible values are: `registered`, `canceled`, `waitlisted`, `pendingApproval`, `rejectedByOrganizer`, `unknownFutureValue`.|
|userId|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|sessions|[virtualEventSession](../resources/virtualeventsession.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
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
  ],
  "preferredTimezone": "String",
  "preferredLanguage": "String"
}
```

