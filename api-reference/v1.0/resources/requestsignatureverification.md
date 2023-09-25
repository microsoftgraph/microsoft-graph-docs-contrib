---
title: "requestSignatureVerification resource type"
description: "Specifies whether this application requires Azure AD to verify the signed authentication requests."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# requestSignatureVerification resource type

Namespace: microsoft.graph

Specifies whether this application requires Azure AD to verify the signed authentication requests.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedWeakAlgorithms|weakAlgorithms|Specifies which weak algorithms are allowed. <br><br> The possible values are: `rsaSha1`, `unknownFutureValue`.|
|isSignedRequestRequired|Boolean|Specifies whether signed authentication requests for this application should be required.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

