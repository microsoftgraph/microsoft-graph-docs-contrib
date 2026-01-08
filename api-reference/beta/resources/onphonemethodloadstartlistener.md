---
title: "onPhoneMethodLoadStartListener resource type"
description: "A listener for when calling codes are enabled or disabled for telephony services in an external identities user flow for Microsoft Entra external tenants."
author: "aloom3"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 02/05/2025
---

# onPhoneMethodLoadStartListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A listener for when calling codes are enabled or disabled for telephony services in an external identities user flow for Microsoft Entra external tenants. If this listener isn't specified, the default list of calling regions are enabled for MFA.

Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).


## Methods
None.

For the list of API operations for managing this resource type, see the [authenticationEventListener](../resources/authenticationeventlistener.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onPhoneMethodLoadStartHandler](../resources/onphonemethodloadstarthandler.md)|Required. Configuration for what to invoke if the event resolves to this listener. |
|id|String|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|displayName|String|The display name of the listener. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|priority|Int32|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onPhoneMethodLoadStartListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPhoneMethodLoadStartListener",
  "id": "String (identifier)",
  "displayName": "String",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onPhoneMethodLoadStartHandler"
  }
}
```

