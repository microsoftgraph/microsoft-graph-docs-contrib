---
title: "simulationNotification resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# simulationNotification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [baseEndUserNotification](../resources/baseendusernotification.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultLanguage|String|**TODO: Add Description** Inherited from [baseEndUserNotification](../resources/baseendusernotification.md).|
|targettedUserType|targettedUserType|**TODO: Add Description**.The possible values are: `unknown`, `clicked`, `compromised`, `allUsers`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|endUserNotification|[endUserNotification](../resources/endusernotification.md)|**TODO: Add Description** Inherited from [microsoft.graph.baseEndUserNotification](../resources/baseendusernotification.md)|

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

