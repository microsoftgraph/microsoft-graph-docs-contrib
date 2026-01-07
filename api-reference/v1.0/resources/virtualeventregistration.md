---
title: "virtualEventRegistration resource type"
description: "Represents an attendee's registration record of a virtual event."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 10/15/2024
---

# virtualEventRegistration resource type

Namespace: microsoft.graph

Represents a registrant's registration record for a [virtualEventWebinar](../resources/virtualeventwebinar.md).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualeventregistration-list.md)|[virtualEventRegistration](../resources/virtualeventregistration.md) collection|Get a list of all [registration records](../resources/virtualeventregistration.md) of a [webinar](../resources/virtualeventwebinar.md).|
|[Create](../api/virtualeventwebinar-post-registrations.md)|[virtualEventRegistration](../resources/virtualeventregistration.md)|Create a registrant's [registration record](../resources/virtualeventregistration.md) for a [webinar](../resources/virtualeventwebinar.md).|
|[Get](../api/virtualeventregistration-get.md)|[virtualEventRegistration](../resources/virtualeventregistration.md)|Get the properties and relationships of a [virtualEventRegistration](../resources/virtualeventregistration.md) object.|
|[Cancel](../api/virtualeventregistration-cancel.md)|None|Cancel a registrant's [registration record](../resources/virtualeventregistration.md) for a [webinar](../resources/virtualeventwebinar.md).|
|[List sessions](../api/virtualeventregistration-list-sessions.md)|[virtualEventSession](../resources/virtualeventsession.md) collection|Get a list of [sessions](../resources/virtualeventsession.md) that a registrant registered for in a [webinar](../resources/virtualeventwebinar.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|  
|cancelationDateTime|DateTimeOffset|Date and time when the registrant cancels their registration for the virtual event. Only appears when applicable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|email|String|Email address of the registrant.|
|externalRegistrationInformation|[virtualEventExternalRegistrationInformation](../resources/virtualeventexternalregistrationinformation.md)| The external information for a virtual event registration. |
|firstName|String|First name of the registrant.|
|id|String|Unique identifier of the registrant. Read-only. Inherited from [entity](../resources/entity.md).|
|lastName|String|Last name of the registrant.|
|preferredTimezone|String|The registrant's time zone details.|
|preferredLanguage|String|The registrant's preferred language.|
|registrationDateTime|DateTimeOffset|Date and time when the registrant registers for the virtual event. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|registrationQuestionAnswers|[virtualEventRegistrationQuestionAnswer](../resources/virtualeventregistrationquestionanswer.md) collection|The registrant's answer to the registration questions.|
|status|virtualEventAttendeeRegistrationStatus|Registration status of the registrant. Read-only. Possible values are `registered`, `canceled`, `waitlisted`, `pendingApproval`, `rejectedByOrganizer`, and `unknownFutureValue`. |
|userId|String|The registrant's ID in Microsoft Entra ID. Only appears when the registrant is registered in Microsoft Entra ID.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
| sessions | [virtualEventSession](../resources/virtualeventsession.md) collection | Sessions for a registration. |

## JSON representation

The following JSON representation shows the resource type
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
  "cancelationDateTime": "String (timestamp)",
  "email": "String",
  "externalRegistrationInformation": {"@odata.type": "microsoft.graph.virtualEventExternalRegistrationInformation"},
  "firstName": "String",
  "id": "String (identifier)",
  "lastName": "String",
  "preferredTimezone": "String",
  "preferredLanguage": "String",
  "registrationDateTime": "String (timestamp)",
  "registrationQuestionAnswers": [{"@odata.type": "microsoft.graph.virtualEventRegistrationQuestionAnswer"}],
  "status": "String",
  "userId": "String"
}
```

