---
title: "filteringPolicyLink resource type"
description: "The association between a filtering policy and a filtering profile."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# filteringPolicyLink resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The association between a filtering policy and a filtering profile.

This is an abstract type.
Inherits from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List filteringPolicyLink objects](../api/networkaccess-filteringpolicylink-list.md)|[microsoft.graph.networkaccess.filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) collection|Get a list of the [microsoft.graph.networkaccess.filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) objects and their properties.|
|[Get filteringPolicyLink](../api/networkaccess-filteringpolicylink-get.md)|[microsoft.graph.networkaccess.filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md)|Get a [microsoft.graph.networkaccess.filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) object.|
|[Update filteringPolicyLink](../api/networkaccess-filteringpolicylink-update.md)|[microsoft.graph.networkaccess.filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md)|Update the properties of a [microsoft.graph.networkaccess.filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) object.|
|[Delete filteringPolicyLink](../api/networkaccess-filteringpolicylink-delete.md)|None|Delete a [microsoft.graph.networkaccess.filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.networkaccess.filteringPolicyAction|The actions for filtering policies, offering "block" and "allow" options to specify whether to block or allow access based on the policy. The possible values are: `block`, `allow`.|
|createdDateTime|DateTimeOffset|The date and time when the filtering Policy link was created.|
|id|String|Unique identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the policy was most recently modified.|
|loggingState|microsoft.graph.networkaccess.status|A value that tells whether the link is enabled or disabled. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md). The allowed values are `enabled` and `disabled`.|
|priority|Int32|*TODO*|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policy|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md)|The definition of the policy ruleset that makes up the core definition of a policy. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md). Automatically expanded.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.filteringPolicyLink",
  "baseType": "microsoft.graph.networkaccess.policyLink",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.filteringPolicyLink",
  "id": "String (identifier)",
  "version": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "priority": "Integer",
  "action": "String",
  "loggingState": "String"
}
```

