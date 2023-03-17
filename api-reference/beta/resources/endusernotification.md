---
title: "endUserNotification resource type"
description: "Represents an end user notification."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# endUserNotification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an end user notification.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List endUserNotifications](../api/attacksimulationroot-list-endusernotifications.md)|[endUserNotification](../resources/endusernotification.md) collection|Get a list of the [endUserNotification](../resources/endusernotification.md) objects and their properties.|
|[Create endUserNotification](../api/attacksimulationroot-post-endusernotifications.md)|[endUserNotification](../resources/endusernotification.md)|Create a new [endUserNotification](../resources/endusernotification.md) object.|
|[Get endUserNotification](../api/endusernotification-get.md)|[endUserNotification](../resources/endusernotification.md)|Read the properties and relationships of an [endUserNotification](../resources/endusernotification.md) object.|
|[Update endUserNotification](../api/endusernotification-update.md)|[endUserNotification](../resources/endusernotification.md)|Update the properties of an [endUserNotification](../resources/endusernotification.md) object.|
|[Delete endUserNotification](../api/attacksimulationroot-delete-endusernotifications.md)|None|Delete an [endUserNotification](../resources/endusernotification.md) object.|
|[List details](../api/endusernotification-list-details.md)|[endUserNotificationDetail](../resources/endusernotificationdetail.md) collection|Get the endUserNotificationDetail resources from the details navigation property.|
|[Add endUserNotificationDetail](../api/endusernotification-post-details.md)|[endUserNotificationDetail](../resources/endusernotificationdetail.md)|Add details by posting to the details collection.|
|[Remove details](../api/endusernotification-delete-details.md)|None|Remove an [endUserNotificationDetail](../resources/endusernotificationdetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|notificationType|endUserNotificationType|**TODO: Add Description**.The possible values are: `unknown`, `positiveReinforcement`, `noTraining`, `trainingAssignment`, `trainingReminder`, `unknownFutureValue`.|
|source|simulationContentSource|**TODO: Add Description**.The possible values are: `unknown`, `global`, `tenant`, `unknownFutureValue`.|
|status|simulationContentStatus|**TODO: Add Description**.The possible values are: `unknown`, `draft`, `ready`, `archive`, `delete`, `unknownFutureValue`.|
|supportedLocales|String collection|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|details|[endUserNotificationDetail](../resources/endusernotificationdetail.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
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
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "notificationType": "String",
  "status": "String",
  "source": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "supportedLocales": [
    "String"
  ]
}
```

