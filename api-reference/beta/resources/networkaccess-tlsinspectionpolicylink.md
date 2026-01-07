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
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-tlsinspectionpolicylink-list.md)|[microsoft.graph.networkaccess.tlsInspectionPolicyLink](../resources/networkaccess-tlsinspectionpolicylink.md) collection|Get a list of the tlsInspectionPolicyLink objects on a filtering profile.|
|[Create](../api/networkaccess-tlsinspectionpolicylink-post.md)|[microsoft.graph.networkaccess.tlsInspectionPolicyLink](../resources/networkaccess-tlsinspectionpolicylink.md)|Create a new tlsInspectionPolicyLink object on a filtering profile.|
|[Get](../api/networkaccess-tlsinspectionpolicylink-get.md)|[microsoft.graph.networkaccess.tlsInspectionPolicyLink](../resources/networkaccess-tlsinspectionpolicylink.md)|Get a tlsInspectionPolicyLink object on a filtering profile.|
|[Update](../api/networkaccess-tlsinspectionpolicylink-update.md)|None|Update the properties of a tlsInspectionPolicyLink object.|
|[Delete](../api/networkaccess-tlsinspectionpolicylink-delete.md)|None|Delete a tlsInspectionPolicyLink object.|

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
