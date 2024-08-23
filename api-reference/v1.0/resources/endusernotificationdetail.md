---
title: "endUserNotificationDetail resource type"
description: "Represents details about end user language specific content."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# endUserNotificationDetail resource type

Namespace: microsoft.graph

Represents details about end user language-specific content.

Inherits from [entity](../resources/entity.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|emailContent|String|Email HTML content.|
|id|String|Unique identifier for the **endUserNotificationDetail** object. Inherited from [entity](../resources/entity.md).|
|isDefaultLangauge|Boolean|Indicates whether this language is default.|
|language|String|Notification language.|
|locale|String|Notification locale.|
|sentFrom|[emailIdentity](../resources/emailidentity.md)|Email details of the sender.|
|subject|String|Mail subject.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
  "emailContent": "String",
  "id": "String (identifier)",
  "isDefaultLangauge": "Boolean",
  "language": "String",
  "locale": "String",
  "sentFrom": {"@odata.type": "microsoft.graph.emailIdentity"},
  "subject": "String"
}
```
