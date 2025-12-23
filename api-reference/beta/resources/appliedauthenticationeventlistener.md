---
title: "appliedAuthenticationEventListener resource type"
description: "Represents the listeners such as Azure Logic Apps and Azure Functions that are triggered by the corresponding events in a sign-in event."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# appliedAuthenticationEventListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the [authentication event listeners](authenticationeventlistener.md) such as Azure Logic Apps and Azure Functions that are triggered by the corresponding events in a [sign-in event](../resources/signin.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|eventType|authenticationEventType|The type of authentication event that triggered the [custom authentication extension](../resources/customauthenticationextension.md) request. The possible values are: `tokenIssuanceStart`, `pageRenderStart`, `unknownFutureValue`, `attributeCollectionStart`, `attributeCollectionSubmit`, `emailOtpSend`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `attributeCollectionStart`, `attributeCollectionSubmit`, `emailOtpSend`. |
|executedListenerId|String|ID of the [authentication event listener](authenticationeventlistener.md) that was executed.|
|handlerResult|[authenticationEventHandlerResult](../resources/authenticationeventhandlerresult.md)|The result from the listening client, such as an Azure Logic App and Azure Functions, of this authentication event.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

