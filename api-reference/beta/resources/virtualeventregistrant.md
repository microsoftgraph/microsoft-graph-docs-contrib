---
title: "virtualEventRegistrant resource type"
description: "Information about a virtual event registrant."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventRegistrant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an attendee who has registered for a virtual event.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get virtualEventRegistrant](../api/virtualeventregistrant-get.md)|[virtualEventRegistrant](../resources/virtualeventregistrant.md)|Read the properties and relationships of a [virtualEventRegistrant](../resources/virtualeventregistrant.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|cancelationDateTime|DateTimeOffset|Time in UTC when the registrant cancels their registration for the virtual event. Only appears when applicable.|
|email|String|Email address of the registrant.|
|firstName|String|First name of the registrant.|
|id|String|Unique identifier of the registrant. Read-only. Inherited from [entity](../resources/entity.md).|
|lastName|String|Last name of the registrant.|
|registrationDateTime|DateTimeOffset|Time in UTC when the registrant registers for the virtual event.|
|registrationQuestionAnswers|[virtualEventRegistrationQuestionAnswer](../resources/virtualeventregistrationquestionanswer.md) collection|The registrant's answer to the registration questions.|
|status|[virtualEventAttendeeRegistrationStatus](#virtualeventattendeeregistrationstatus-values)|Registration status of the registrant. Read-only.|
|userId|String|The registrant's AAD user ID. Only appears when the registrant is registered in AAD.|

### virtualEventAttendeeRegistrationStatus values

| Value | Description |
| ----- | ----------- |
| `registered` | The attendee has successfully registered for the virtual event. |
| `canceled` | The attendee has canceled registeration for the virtual event. |
| `waitlisted` | Waitlist has been enabled and the virtual event is at full capacity. The attendee is placed on the waitlist. |
| `pendingApproval` | Manual approval has been enabled and the attendee is pending approval from the organizer. |
| `rejectedByOrganizer` | Manual approval has been enabled and the attendee is rejected by the organizer. |
| `unknownFutureValue` | Evolvable enumeration sentinel value. Do not use. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventRegistrant",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventRegistrant",
  "cancelationDateTime": "String (timestamp)",
  "email": "String",
  "firstName": "String",
  "id": "String (identifier)",  
  "lastName": "String",
  "registrationDateTime": "String (timestamp)",
  "registrationQuestionAnswers": [
    {
      "@odata.type": "microsoft.graph.virtualEventRegistrationQuestionAnswer"
    }
  ],
  "status": "String",
  "userId": "String"
}
```
