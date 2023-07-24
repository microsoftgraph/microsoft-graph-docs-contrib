---
title: "todoSettings resource type"
description: "Company-wide settings for Microsoft Todo"
author: "zadinsmo"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# todoSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Company-wide settings for Microsoft Todo.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isExternalJoinEnabled|Boolean|Controls whether users can join lists from users external to your organization.|
|isExternalShareEnabled|Boolean|Controls whether users can share lists with external users.|
|isPushNotificationEnabled|Boolean|Controls whether push notifications are enabled for your users.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.todoSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.todoSettings",
  "isPushNotificationEnabled": "Boolean",
  "isExternalJoinEnabled": "Boolean",
  "isExternalShareEnabled": "Boolean"
}
```

