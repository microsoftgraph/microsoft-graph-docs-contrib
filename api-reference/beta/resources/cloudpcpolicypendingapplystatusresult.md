---
title: "cloudPcPolicyPendingApplyStatusResult resource type"
description: "Represents the result of checking whether a provisioning policy has unapplied changes pending for Cloud PCs."
author: "zhuangzhuang131419"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 06/01/2026
---

# cloudPcPolicyPendingApplyStatusResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of checking whether a provisioning policy has unapplied changes pending for Cloud PCs.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|hasUnappliedPolicyUpdate|Boolean|Indicates whether the provisioning policy has unapplied changes pending for Cloud PCs. When `true`, the policy contains changes that aren't yet applied. When `false`, all policy changes are applied. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcPolicyPendingApplyStatusResult"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcPolicyPendingApplyStatusResult",
  "hasUnappliedPolicyUpdate": true
}
```
