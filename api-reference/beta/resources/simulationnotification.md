---
title: "simulationNotification resource type"
description: "Represents the content of a notification that targets users who are part of a simulation."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# simulationNotification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the content of a notification that targets users who are part of a simulation.

Inherits from [baseEndUserNotification](../resources/baseendusernotification.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|defaultLanguage|String|Default language. Inherited from [baseEndUserNotification](../resources/baseendusernotification.md).|
|targettedUserType|targettedUserType|Target user type. Possible values are: `unknown`, `clicked`, `compromised`, `allUsers`, `unknownFutureValue`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|endUserNotification|[endUserNotification](../resources/endusernotification.md)|End user notification detail. Inherited from [baseEndUserNotification](../resources/baseendusernotification.md).|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.simulationNotification"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.simulationNotification",
  "defaultLanguage": "String",
  "targettedUserType": "String"
}
```
