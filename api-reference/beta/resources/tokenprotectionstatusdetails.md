---
title: "tokenProtectionStatusDetails resource type"
description: "Represents the status of token protection for a request in sign-in logs."
author: "paulgarn"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
ms.date: 05/11/2026
doc_type: resourcePageType
---

# tokenProtectionStatusDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

 The status of token protection for a request in the sign-in logs. `bound` requests pass a conditional access session control for token protection. More detail might be provided in the **signInSessionStatusCode** property. For more information, see [Conditional Access: Token Protection](/entra/identity/conditional-access/concept-token-protection).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|signInSessionStatus|tokenProtectionStatus|The token protection status of the sign-in session. The possible values are: `none`, `bound`, `unbound`, `unknownFutureValue`.|
|signInSessionStatusCode|Int32|Additional information about the status.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tokenProtectionStatusDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tokenProtectionStatusDetails",
  "signInSessionStatus": "String",
  "signInSessionStatusCode": "Integer"
}
```
