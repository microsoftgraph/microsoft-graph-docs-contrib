---
title: "requestsignatureverification resource type "
description: "Use this resource to define whether an application requires the verification of signed authentication requests."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# RequestSignatureVerification resource type 

Namespace: microsoft.graph

Specifies whether an application requires the verification of signed authentication requests. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isSignedRequestRequired | Boolean | Specifies whether signed authentication requests for this application should be required. |
| allowedWeakAlgorithms | String collection | Specifies if this application accepts weak algorithms. 
 
Supported value: rsaSha1 |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.requestSchedule"
}
-->
``` json
{ 
  "requestSignatureVerification": { 
    "isSignedRequestRequired": "Boolean", 
    "allowedWeakAlgorithms": ["String"] 
  } 
}
```

