---
title: "appliedAuthenticationEventListener resource type"
description: "Indicates detailed information about the applied event listeners or listeners that are triggered by the corresponding events in an authentication activity."
author: "junrlin"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# appliedAuthenticationEventListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates detailed information about the applied event listeners or listeners that are triggered by the corresponding events in an authentication activity.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|eventType|authenticationEventType|The type of authentication event that triggered the custom extension request. The possible values are: `tokenIssuanceStart`, `pageRenderStart`, `unknownFutureValue`.|
|executedListenerId|String|ID of the Event Listener that was executed.|
|handlerResult|[authenticationEventHandlerResult](../resources/authenticationeventhandlerresult.md)|The result from the listening client, such as an Azure Logic App, of this authentication event.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

