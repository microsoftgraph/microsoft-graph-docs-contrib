---
title: "todoSettings resource type"
description: "Company-wide settings for Microsoft Todo"
author: "zadinsmo"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
ms.date: 03/21/2024
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
The following JSON representation shows the resource type.
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

