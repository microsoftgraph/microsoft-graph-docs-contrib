---
title: "requestSignatureVerification resource type"
description: "Specifies whether this application requires Microsoft Entra ID to verify the signed authentication requests."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# requestSignatureVerification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies whether this application requires Microsoft Entra ID to verify the signed authentication requests.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedWeakAlgorithms|weakAlgorithms|Specifies whether this application accepts weak algorithms. <br><br> The possible values are: `rsaSha1`, `unknownFutureValue`.|
|isSignedRequestRequired|Boolean|Specifies whether signed authentication requests for this application should be required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.requestSignatureVerification"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.requestSignatureVerification",
  "isSignedRequestRequired": "Boolean",
  "allowedWeakAlgorithms": "String"
}
```
