---
title: "authenticationFlow resource type"
description: "Authentication flow used during the sign-in as defined in the Conditional Access What If evaluation."
author: "kvenkit"
ms.date: 07/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# authenticationFlow resource type

Namespace: microsoft.graph

Authentication flow used during the sign-in, as defined in [Conditional Access What If evaluation](../api/conditionalaccessroot-evaluate.md). Contains properties for deviceCodeFlow and authenticationTransfer for admins to leverage when creating policies.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|transferMethod|conditionalAccessTransferMethods|Represents the transfer methods in scope for the policy. The possible values are: `none`, `deviceCodeFlow`, `authenticationTransfer`, `unknownFutureValue`. Default value is `none`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationFlow"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationFlow",
  "transferMethod": "String"
}
```

