---
title: "aadUserNotificationRecipient resource type"
description:  Represents recipient of a notification sent in Microsoft Teams activity feed where recipient is an AzureAD user.
author: RamjotSingh
localization_priority: Normal
ms.prod: microsoft-teams
doc_type: resourcePageType
---

# aadUserNotificationRecipient resource type

Namespace: microsoft.graph

Represents AzureAD user recipient of a notification sent in Microsoft Teams activity feed.

Inherits from [teamworkNotificationRecipient](teamworknotificationrecipient.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|userId|String|Azure AD user identifier. This is the Id from [list users](../api/user-list.md)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.aadUserNotificationRecipient"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.aadUserNotificationRecipient",
  "userId": "String"
}
```

