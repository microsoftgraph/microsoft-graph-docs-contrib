---
title: "onTokenIssuanceStartReturnClaim resource type"
description: "A claim returned by an API that is to be added to a token after the event when a token is about to be issued to your application."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onTokenIssuanceStartReturnClaim resource type

Namespace: microsoft.graph

A claim returned by an API that is to be added to a token after the event when a token is about to be issued to your application.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|claimIdInApiResponse|String|The identifier of the claim returned by an API that is to be add to a token being issued.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

