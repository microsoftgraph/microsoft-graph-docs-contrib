---
title: "openShiftChangeRequest resource type"
description: "Represents a request to claim an open shift in a schedule."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# openShiftChangeRequest resource type

Namespace: microsoft.graph

Represents request to claim an [openShift](../resources/openshift.md) in a [schedule](../resources/schedule.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/openshiftchangerequest-list.md) | Collection of [openShiftChangeRequest](openshiftchangerequest.md) | List the properties and relationships of **openShiftChangeRequest** objects in a team. |
| [Create](../api/openshiftchangerequest-post.md) | [openShiftChangeRequest](openshiftchangerequest.md) | Create an instance of an **openShiftChangeRequest** object. |
| [Get](../api/openshiftchangerequest-get.md) | [openShiftChangeRequest](openshiftchangerequest.md) | Read the properties and relationships of an **openShiftChangeRequest** object. |
|[Approve](../api/openshiftchangerequest-approve.md)|None|Approve an open shift change request.|
|[Decline](../api/openshiftchangerequest-decline.md)|None| Decline an open shift change request.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignedTo|scheduleChangeRequestActor|Indicates who the request is assigned to. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).The possible values are: `sender`, `recipient`, `manager`, `system`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the entity. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|createdDateTime|DateTimeOffset|The date and time when the entity was created. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|id|String|The unique identifier for the entity. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The user who last modified the entity. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the entity was last modified. Inherited from [changeTrackedEntity](../resources/changetrackedentity.md).|
|managerActionDateTime|DateTimeOffset|The date and time when the manager approved or declined the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|managerActionMessage|String|The message sent by the manager regarding the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|managerUserId|String|The user ID of the manager who approved or declined the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|openShiftId|String|ID for the open shift.|
|senderDateTime|DateTimeOffset|The date and time when the sender sent the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|senderMessage|String|The message sent by the sender of the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|senderUserId|String|The user ID of the sender of the request. Inherited from [scheduleChangeRequest](../resources/schedulechangerequest.md).|
|state|scheduleChangeState|The state of the **scheduleChangeRequest**. The possible values are: `pending`, `approved`, `declined`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.openShiftChangeRequest",
  "baseType": "microsoft.graph.scheduleChangeRequest",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.openShiftChangeRequest",
  "id": "String (identifier)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "assignedTo": "String",
  "state": "String",
  "senderMessage": "String",
  "senderDateTime": "String (timestamp)",
  "managerActionMessage": "String",
  "managerActionDateTime": "String (timestamp)",
  "senderUserId": "String",
  "managerUserId": "String",
  "openShiftId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "openShiftChangeRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

