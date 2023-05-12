---
title: "onTokenIssuanceStartReturnClaim resource type"
description: "A claim returned by an API that is to be add to a token after an onTokenIssuanceStart event."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onTokenIssuanceStartReturnClaim resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A claim returned by an API that is to be add to a token after an onTokenIssuanceStart event.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|claimIdInApiResponse|String|The identifier of the claim returned by an API that is to be add to a token being issued.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onTokenIssuanceStartReturnClaim"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onTokenIssuanceStartReturnClaim",
  "claimIdInApiResponse": "String"
}
```

