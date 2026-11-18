---
title: "webFilteringPolicyLink resource type"
description: "Represents the association between a web filtering policy and a filtering profile."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# webFilteringPolicyLink resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the association between a [webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md) and a [filteringProfile](../resources/networkaccess-filteringprofile.md).

Inherits from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-webfilteringpolicylink-list.md)|[microsoft.graph.networkaccess.webFilteringPolicyLink](../resources/networkaccess-webfilteringpolicylink.md) collection|Get a list of the webFilteringPolicyLink objects and their properties.|
|[Get](../api/networkaccess-webfilteringpolicylink-get.md)|[microsoft.graph.networkaccess.webFilteringPolicyLink](../resources/networkaccess-webfilteringpolicylink.md)|Read the properties and relationships of [microsoft.graph.networkaccess.webFilteringPolicyLink](../resources/networkaccess-webfilteringpolicylink.md) object.|
|[Update](../api/networkaccess-webfilteringpolicylink-update.md)|[microsoft.graph.networkaccess.webFilteringPolicyLink](../resources/networkaccess-webfilteringpolicylink.md)|Update the properties of a webFilteringPolicyLink object.|
|[Delete](../api/networkaccess-webfilteringpolicylink-delete.md)|None|Delete a webFilteringPolicyLink object.|
|[Get policy](../api/networkaccess-webfilteringpolicylink-list-policy.md)|[microsoft.graph.networkaccess.webFilteringPolicy](../resources/networkaccess-webfilteringpolicy.md)|Get the web filtering policy associated with the policy link.|
|[Add policy](../api/networkaccess-webfilteringpolicylink-post-policy.md)|None|Associate a web filtering policy with the policy link.|
|[Remove policy](../api/networkaccess-webfilteringpolicylink-delete-policy.md)|None|Remove a [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the policy link. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|state|[microsoft.graph.networkaccess.status](../resources/enums-networkaccess.md#status-values)|The state of the policy link. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md). The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|
|version|String|The version of the policy link. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policy|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md)|The web filtering policy associated with the filtering profile. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.webFilteringPolicyLink",
  "baseType": "microsoft.graph.networkaccess.policyLink",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringPolicyLink",
  "id": "String (identifier)",
  "state": "String",
  "version": "String"
}
```
