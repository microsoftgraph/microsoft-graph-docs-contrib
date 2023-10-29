---
title: "filteringPolicy resource type"
description: "A filtering policy defines the specific traffic that is allowed or blocked through the Global Secure Access services for a filtering profile."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# filteringPolicy resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A filtering policy defines the specific traffic that is allowed or blocked through the Global Secure Access services for a filtering profile.

Inherits from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List filteringPolicies](../api/networkaccess-networkaccessroot-list-filteringpolicies.md)|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) collection|Get all filtering policies in the tenant to better understand what traffic is blocked or allowed.|
|[Create filteringPolicy](../api/networkaccess-filteringpolicy-post-policyrules.md)|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md)|Create a new [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) for defining traffic rules.|
|[Get filteringPolicy](../api/networkaccess-filteringpolicy-get.md)|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) object to view its configuration.|
|[Update filteringPolicy](../api/networkaccess-filteringprofile-update.md)|[microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md)|Modify the properties of an existing [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) to update its traffic rules.|
|[Delete filteringPolicy](../api/networkaccess-filteringprofile-delete-policies.md)|None|Delete a [microsoft.graph.networkaccess.filteringPolicy](../resources/networkaccess-filteringpolicy.md) object.|
|[List policyRules](../api/networkaccess-policy-list-policyrules.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection|View the resources associated with the policyRules navigation property, providing insights into policy details.|
|[Create policyRule](../api/networkaccess-filteringpolicy-post-policyrules.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md)|Establish a new object to define specific policy rules for network access.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Timestamp that indicates when the filtering Policy was originally created.|
|description|String|Filtering policy description. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|
|id|String|Identifier for the filtering policy. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Indicating the date and time when a particular profile was last modified or updated.|
|name|String|Filtering policy display name. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policyRules|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection|Represents the definition of the policy ruleset that makes up the core definition of a policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md)|

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

