---
title: "filteringPolicy resource type"
description: "Defines the specific traffic that is allowed or blocked through the Global Secure Access services for a filtering profile."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
ms.date: 08/01/2024
---

# filteringPolicy resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the specific traffic that is allowed or blocked through the Global Secure Access services for a filtering profile.

Inherits from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-networkaccessroot-list-filteringpolicies.md)|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) collection|Get all filtering policies in the tenant to better understand what traffic is blocked or allowed.|
|[List policies for a filtering policy profile](../api/networkaccess-policylink-list-policy.md)|[filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) collection|Get the filtering policy resources from the policy profile.|
|[Create](../api/networkaccess-filteringpolicy-post-policyrules.md)|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md)|Create a new [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) for defining traffic rules.|
|[Get](../api/networkaccess-filteringpolicy-get.md)|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md)|Get a [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) object to view its configuration.|
|[Update](../api/networkaccess-filteringprofile-update.md)|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md)|Modify the properties of an existing [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) to update its traffic rules.|
|[Delete](../api/networkaccess-filteringpolicylink-delete-policy.md)|None|Delete a [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) object.|
|[Delete policy for a filtering policy profile](../api/networkaccess-filteringprofile-delete-policies.md)|None|Delete a [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) object.|



## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the filtering Policy was originally created.|
|description|String|A description of the filtering policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|
|id|String|The identifier for the filtering policy. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when a particular profile was last modified or updated.|
|name|String|The display name for the filtering policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policyRules|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection|The definition of the policy ruleset that makes up the core definition of a policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.filteringPolicy",
  "baseType": "microsoft.graph.networkaccess.policy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.filteringPolicy",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "version": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)"
}
```

