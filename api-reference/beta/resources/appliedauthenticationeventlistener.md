---
title: "appliedAuthenticationEventListener resource type"
description: "Represents the listeners such as Azure Logic Apps and Azure Functions that are triggered by the corresponding events in a sign-in event."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# appliedAuthenticationEventListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the [authentication event listeners](authenticationeventlistener.md) such as Azure Logic Apps and Azure Functions that are triggered by the corresponding events in a [sign-in event](../resources/signin.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|eventType|authenticationEventType|The type of authentication event that triggered the custom authentication extension request. The possible values are: `tokenIssuanceStart`, `pageRenderStart`, `unknownFutureValue`.|
|executedListenerId|String|ID of the [authentication event listener](authenticationeventlistener.md) that was executed.|
|handlerResult|[authenticationEventHandlerResult](../resources/authenticationeventhandlerresult.md)|The result from the listening client, such as an Azure Logic App and Azure Functions, of this authentication event.|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appliedAuthenticationEventListener"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appliedAuthenticationEventListener",
  "eventType": "String",
  "executedListenerId": "String",
  "handlerResult": {
    "@odata.type": "microsoft.graph.authenticationEventHandlerResult"
  }
}
```

