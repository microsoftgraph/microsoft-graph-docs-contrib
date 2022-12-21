---
title: "includeAllAccountTargetContent resource type"
description: "Represents all users of a tenant who should be selected for a targeted phishing simulation."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# includeAllAccountTargetContent resource type

Namespace: microsoft.graph

Represents all users of a tenant who should be selected for a targeted phishing simulation.

Inherits from [accountTargetContent](../resources/accounttargetcontent.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get includedAccountTarget](../api/attacksimulationroot-get-includedaccounttarget.md)|[includeAllAccountTargetContent](../resources/includeallaccounttargetcontent.md)|Get included user for an attack simulation campaigns.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|type|[accountTargetContentType](../resources/accountTargetContent.md#accountTargetContentType-values. Inherited from [accountTargetContent](../resources/accounttargetcontent.md)|Type of account target content. The possible values are: `unknown`, `includeAll`, `addressBook`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.includeAllAccountTargetContent",
  "openType": true
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.security.includeAllAccountTargetContent",
    "type": "String"
}
```

## See also

- [Simulate a phishing attack](/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide&preserve-view=true)
- [Get started using attack simulation training](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).
