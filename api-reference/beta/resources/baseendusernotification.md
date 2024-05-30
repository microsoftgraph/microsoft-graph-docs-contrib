---
title: "baseEndUserNotification resource type"
description: "Represents details about an end user notification."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# baseEndUserNotification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about an end user notification.

Base type of [positiveReinforcementNotification](../resources/positivereinforcementnotification.md), [simulationNotification](../resources/simulationnotification.md), and [trainingReminderNotification](../resources/trainingremindernotification.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|defaultLanguage|String|The default language for the end user notification.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|endUserNotification|[endUserNotification](../resources/endusernotification.md)|End user notification detail.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.baseEndUserNotification"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.baseEndUserNotification",
  "defaultLanguage": "String"
}
```
