---
title: "claimBinding resource type"
description: "Defines the mapping between a source attribute and a Verifiable ID claim."
author: "tilarso"
ms.date: 04/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# claimBinding resource type

Namespace: microsoft.graph

Defines the mapping between a source attribute and a Verifiable ID claim in a [verifiedIdProfileConfiguration](../resources/verifiedidprofileconfiguration.md) object.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|matchConfidenceLevel|matchConfidenceLevel|The confidence level for matching the claim to the source attribute. The possible values are: `exact`, `relaxed`, `unknownFutureValue`.|
|sourceAttribute|String|Source attribute name from the source system, for example a directory attribute.|
|verifiedIdClaim|String|Verified ID claim name or path, for example `vc.credentialSubject.firstName`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.claimBinding"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.claimBinding",
  "matchConfidenceLevel": "String",
  "sourceAttribute": "String",
  "verifiedIdClaim": "String"
}
```

