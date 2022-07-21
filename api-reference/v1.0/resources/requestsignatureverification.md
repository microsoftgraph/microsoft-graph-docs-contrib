---
title: "RequestSignatureVerification resource type"
description: "Specifies whether this application requires the verification of signed authentication requests."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# RequestSignatureVerification resource type

Namespace: microsoft.graph

Specifies whether this application requires the verification of signed authentication requests.

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
| allowedWeakAlgorithms | String collection | Specifies if this application accepts weak algorithms. <br><br> Supported value: rsaSha1|
| isSignedRequestRequired | Boolean | Specifies whether signed authentication requests for this application should be required.|

## JSON representation

Here is a JSON representation of the resource.

```json
{ 
  "requestSignatureVerification": { 
      "isSignedRequestRequired": "Boolean", 
      "allowedWeakAlgorithms": ["String"] 
  } 
}
```
