---
title: "onUserCreateStartListener resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# onUserCreateStartListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List onUserCreateStartListeners](../api/onusercreatestartlistener-list.md)|[onUserCreateStartListener](../resources/onusercreatestartlistener.md) collection|Get a list of the [onUserCreateStartListener](../resources/onusercreatestartlistener.md) objects and their properties.|
|[Get onUserCreateStartListener](../api/onusercreatestartlistener-get.md)|[onUserCreateStartListener](../resources/onusercreatestartlistener.md)|Read the properties and relationships of an [onUserCreateStartListener](../resources/onusercreatestartlistener.md) object.|
|[Update onUserCreateStartListener](../api/onusercreatestartlistener-update.md)|[onUserCreateStartListener](../resources/onusercreatestartlistener.md)|Update the properties of an [onUserCreateStartListener](../resources/onusercreatestartlistener.md) object.|
|[Delete onUserCreateStartListener](../api/onusercreatestartlistener-delete.md)|None|Delete an [onUserCreateStartListener](../resources/onusercreatestartlistener.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|**TODO: Add Description** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|**TODO: Add Description** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onUserCreateStartHandler](../resources/onusercreatestarthandler.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|priority|Int32|**TODO: Add Description** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onUserCreateStartListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onUserCreateStartListener",
  "id": "String (identifier)",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onUserCreateStartHandler"
  }
}
```

