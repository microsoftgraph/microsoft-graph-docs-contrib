---
title: "requestSignatureVerification resource type"
description: "Specifies whether this application requires the verification of signed authentication requests."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# requestSignatureVerification resource type

Namespace: microsoft.graph

Specifies whether this application requires the verification of signed authentication requests.

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
| allowedWeakAlgorithms | String collection | Specifies if this application accepts weak algorithms. <br><br> Supported value: rsaSha1|
| isSignedRequestRequired | Boolean | Specifies whether signed authentication requests for this application should be required.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.requestSignatureVerification"
}
-->
```json
{ 
  "requestSignatureVerification": { 
      "isSignedRequestRequired": "Boolean", 
      "allowedWeakAlgorithms": ["String"] 
  } 
}
```
