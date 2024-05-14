---
title: "endUserNotification resource type"
description: "Represents an end user notification."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# endUserNotification resource type

Namespace: microsoft.graph

Represents an end user notification.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List endUserNotifications](../api/attacksimulationroot-list-endusernotifications.md)|[endUserNotification](../resources/endusernotification.md) collection|Get a list of [endUserNotification](../resources/endusernotification.md) objects and their properties.|
|[Get endUserNotification](../api/endusernotification-get.md)|[endUserNotification](../resources/endusernotification.md)|Read the properties and relationships of an [endUserNotification](../resources/endusernotification.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who created the notification.|
|createdDateTime|DateTimeOffset|Date and time when the notification was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|Description of the notification as defined by the user.|
|displayName|String|Name of the notification as defined by the user.|
|id|String|Unique identifier for the **endUserNotification** object. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who last modified the notification.|
|lastModifiedDateTime|DateTimeOffset|Date and time when the notification was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|notificationType|endUserNotificationType|Type of notification. Possible values are: `unknown`, `positiveReinforcement`, `noTraining`, `trainingAssignment`, `trainingReminder`, `unknownFutureValue`.|
|source|[simulationContentSource](../resources/simulation.md#simulationcontentsource-values)|The source of the content. Possible values are: `unknown`, `global`, `tenant`, `unknownFutureValue`.|
|status|[simulationContentStatus](../resources/simulation.md#simulationcontentstatus-values)|The status of the notification. Possible values are: `unknown`, `draft`, `ready`, `archive`, `delete`, `unknownFutureValue`.|
|supportedLocales|String collection|Supported locales for **endUserNotification** content.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.endUserNotification",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.endUserNotification",
  "createdBy": {"@odata.type": "microsoft.graph.emailIdentity"},
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.emailIdentity"},
  "lastModifiedDateTime": "String (timestamp)",
  "notificationType": "String",
  "source": "String",
  "status": "String",
  "supportedLocales": ["String"]
}
```
