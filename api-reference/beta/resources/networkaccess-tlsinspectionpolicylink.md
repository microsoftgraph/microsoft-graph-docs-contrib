---
title: "tlsInspectionPolicyLink resource type"
description: "Links a TLS inspection policy to a filtering profile."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
toc.title: Policy link to filtering profile
---

# tlsInspectionPolicyLink resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the link between a [filtering profile](../resources/networkaccess-filteringprofile.md) and a [TLS inspection policy](../resources/networkaccess-tlsinspectionpolicy.md).

Inherits from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).

## Methods

For supported API operations, see [filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the policy link. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md). Inherits from [entity](../resources/entity.md).|
|state|microsoft.graph.networkaccess.status|The state of the policy link. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md). The possible values are: `enabled`, `disabled`, `unknownFutureValue`. Supports `$filter` (`eq`, `ne`).|
|version|String|Version number of the policy link.   Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policy|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md)|The TLS inspection policy associated with this link. The policy is of derived type [microsoft.graph.networkaccess.tlsInspectionpolicy](../resources/networkaccess-tlsinspectionpolicy.md). Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.tlsInspectionPolicyLink",
  "baseType": "microsoft.graph.networkaccess.policyLink",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionPolicyLink",
  "id": "String (identifier)",
  "state": "String",
  "version": "String"
}
```
