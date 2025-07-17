---
title: "includeAllAccountTargetContent resource type"
description: "Represents all users of a tenant who should be selected for a targeted phishing simulation."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# includeAllAccountTargetContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents all users of a tenant who should be selected for a targeted phishing simulation.

Inherits from [accountTargetContent](../resources/accounttargetcontent.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|type|[accountTargetContentType](../resources/accounttargetcontent.md#accounttargetcontenttype-values)| The type of account target content. The possible values are: `unknown`, `includeAll`, `addressBook`, `unknownFutureValue`. Inherited from [accountTargetContent](../resources/accounttargetcontent.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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

## Related content

- [Simulate a phishing attack](/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide&preserve-view=true)
- [Get started using attack simulation training](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).
