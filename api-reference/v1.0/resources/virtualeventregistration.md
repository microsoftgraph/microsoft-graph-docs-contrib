---
title: "virtualEventRegistration resource type"
description: "Represents an attendee's registration record of a virtual event."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventRegistration resource type

Namespace: microsoft.graph

Represents an attendee's registration record for a [virtualEventWebinar](../resources/virtualeventwebinar.md).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List virtualEventRegistrations](../api/virtualeventwebinar-list-registrations.md)|[virtualEventRegistration](../resources/virtualeventregistration.md) collection|Get a list of all [registration records](../resources/virtualeventregistration.md) of a [webinar](../resources/virtualeventwebinar.md).|
|[Get virtualEventRegistration](../api/virtualeventregistration-get.md)|[virtualEventRegistration](../resources/virtualeventregistration.md)|Get the properties and relationships of a [virtualEventRegistration](../resources/virtualeventregistration.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|cancelationDateTime|DateTimeOffset|Date and time when the registrant cancels their registration for the virtual event. Only appears when applicable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|email|String|Email address of the registrant.|
|firstName|String|First name of the registrant.|
|id|String|Unique identifier of the registrant. Read-only. Inherited from [entity](../resources/entity.md).|
|lastName|String|Last name of the registrant.|
|registrationDateTime|DateTimeOffset|Date and time when the registrant registers for the virtual event. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|registrationQuestionAnswers|[virtualEventRegistrationQuestionAnswer](../resources/virtualeventregistrationquestionanswer.md) collection|The registrant's answer to the registration questions.|
|status|[virtualEventAttendeeRegistrationStatus](#virtualeventattendeeregistrationstatus-values)|Registration status of the registrant. Read-only. |
|userId|String|The registrant's ID in Microsoft Entra ID. Only appears when the registrant is registered in Microsoft Entra ID.|

### virtualEventAttendeeRegistrationStatus values

| Value | Description |
| ----- | ----------- |
| registered | The attendee successfully registered for the virtual event. |
| canceled | The attendee canceled registration for the virtual event. |
| waitlisted | Waitlist is enabled and the virtual event is at full capacity. The attendee is on the waitlist. |
| pendingApproval | Manual approval is enabled and the attendee is pending approval from the organizer. |
| rejectedByOrganizer | Manual approval is enabled and the organizer rejected the attendee. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |

## Relationships
None.

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

