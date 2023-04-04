---
title: "endUserNotificationDetail resource type"
description: "End user language specific content details."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# endUserNotificationDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

End user language specific content details.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List endUserNotificationDetails](../api/endusernotification-list-details.md)|[endUserNotificationDetail](../resources/endusernotificationdetail.md) collection|Get a list of the [endUserNotificationDetail](../resources/endusernotificationdetail.md) objects and their properties.|
|[Create endUserNotificationDetail](../api/endusernotification-post-details.md)|[endUserNotificationDetail](../resources/endusernotificationdetail.md)|Create a new [endUserNotificationDetail](../resources/endusernotificationdetail.md) object.|
|[Get endUserNotificationDetail](../api/endusernotificationdetail-get.md)|[endUserNotificationDetail](../resources/endusernotificationdetail.md)|Read the properties and relationships of an [endUserNotificationDetail](../resources/endusernotificationdetail.md) object.|
|[Update endUserNotificationDetail](../api/endusernotificationdetail-update.md)|[endUserNotificationDetail](../resources/endusernotificationdetail.md)|Update the properties of an [endUserNotificationDetail](../resources/endusernotificationdetail.md) object.|
|[Delete endUserNotificationDetail](../api/endusernotification-delete-details.md)|None|Delete an [endUserNotificationDetail](../resources/endusernotificationdetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|emailContent|String|Email html content.|
|id|String|Identifier. Inherited from [entity](../resources/entity.md).|
|isDefaultLangauge|Boolean|Tells if this language is default.|
|language|String|Notification language.|
|locale|String|Notification locale.|
|sentFrom|[emailIdentity](../resources/emailidentity.md)|Email details of sender.|
|subject|String|Mail subject.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.endUserNotificationDetail",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.endUserNotificationDetail",
  "id": "String (identifier)",
  "sentFrom": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "subject": "String",
  "emailContent": "String",
  "locale": "String",
  "language": "String",
  "isDefaultLangauge": "Boolean"
}
```

