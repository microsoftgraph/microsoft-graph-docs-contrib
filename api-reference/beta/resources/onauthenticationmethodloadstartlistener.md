---
title: "onAuthenticationMethodLoadStartListener resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# onAuthenticationMethodLoadStartListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List onAuthenticationMethodLoadStartListeners](../api/onauthenticationmethodloadstartlistener-list.md)|[onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) collection|Get a list of the [onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) objects and their properties.|
|[Get onAuthenticationMethodLoadStartListener](../api/onauthenticationmethodloadstartlistener-get.md)|[onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md)|Read the properties and relationships of an [onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) object.|
|[Update onAuthenticationMethodLoadStartListener](../api/onauthenticationmethodloadstartlistener-update.md)|[onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md)|Update the properties of an [onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) object.|
|[Delete onAuthenticationMethodLoadStartListener](../api/onauthenticationmethodloadstartlistener-delete.md)|None|Delete an [onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|**TODO: Add Description** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|**TODO: Add Description** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onAuthenticationMethodLoadStartHandler](../resources/onauthenticationmethodloadstarthandler.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|priority|Int32|**TODO: Add Description** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onAuthenticationMethodLoadStartListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAuthenticationMethodLoadStartListener",
  "id": "String (identifier)",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onAuthenticationMethodLoadStartHandler"
  }
}
```

