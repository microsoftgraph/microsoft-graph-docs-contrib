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
|[Get endUserNotification](../api/endusernotification-get.md)|[endUserNotification](../resources/endusernotification.md)|Read the properties and relationships of an [endUserNotification](../resources/endusernotification.md) object.|
|[Get details](../api/endusernotificationdetail-get.md)|[endUserNotificationDetail](../resources/endusernotificationdetail.md)|Get the endUserNotificationDetail resources from the details navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[emailIdentity](../resources/emailidentity.md)|User who created the training.||
|createdDateTime|DateTimeOffset|Date & Time of the campaign creation.|
|description|String|Description of the campaign as defined by the user.|
|displayName|String|Name of the campaign as defined by the user.|
|id|String|Identifier. Inherited from entity.|
|lastModifiedBy|emailIdentity|User who modified the campaign last.|
|lastModifiedDateTime|DateTimeOffset|Date & Time when campaign was last modified.|
|notificationType|endUserNotificationType|Type of notification.The possible values are: `unknown`, `positiveReinforcement`, `noTraining`, `trainingAssignment`, `trainingReminder`, `unknownFutureValue`.|
|source|simulationContentSource|Source of the content.The possible values are: `unknown`, `global`, `tenant`, `unknownFutureValue`.|
|status|simulationContentStatus|The status of the campaign.The possible values are: `unknown`, `draft`, `ready`, `archive`, `delete`, `unknownFutureValue`.|
|supportedLocales|String collection|Supported locales for endUserNotification content.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|details|[endUserNotificationDetail](../resources/endusernotificationdetail.md) collection|Fetches endUserNotification details.|

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

