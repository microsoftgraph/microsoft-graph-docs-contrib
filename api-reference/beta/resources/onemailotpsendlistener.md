---
title: "onEmailOtpSendListener resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# onEmailOtpSendListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onemailotpsendlistener-list.md)|[onEmailOtpSendListener](../resources/onemailotpsendlistener.md) collection|Get a list of the [onEmailOtpSendListener](../resources/onemailotpsendlistener.md) objects and their properties.|
|[Get](../api/onemailotpsendlistener-get.md)|[onEmailOtpSendListener](../resources/onemailotpsendlistener.md)|Read the properties and relationships of an [onEmailOtpSendListener](../resources/onemailotpsendlistener.md) object.|
|[Update](../api/onemailotpsendlistener-update.md)|[onEmailOtpSendListener](../resources/onemailotpsendlistener.md)|Update the properties of an [onEmailOtpSendListener](../resources/onemailotpsendlistener.md) object.|
|[Delete](../api/onemailotpsendlistener-delete.md)|None|Delete an [onEmailOtpSendListener](../resources/onemailotpsendlistener.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|**TODO: Add Description** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|**TODO: Add Description** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onOtpSendHandler](../resources/onotpsendhandler.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|priority|Int32|**TODO: Add Description** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onEmailOtpSendListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onEmailOtpSendListener",
  "id": "String (identifier)",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onOtpSendHandler"
  }
}
```

