---
title: "filteringPolicyLink resource type"
description: "A filteringPolicyLink connects a filtering Policy with a filtering profile"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# filteringPolicyLink resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A filteringPolicyLink connects a filtering Policy with a filtering profil
This is an abstract type.


Inherits from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List filteringPolicyLinks](../api/networkaccess-filteringpolicylink-list.md)|[microsoft.graph.networkaccess.filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) collection|Get a list of the [microsoft.graph.networkaccess.filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) objects and their properties.|
|[Get filteringPolicyLink](../api/networkaccess-filteringpolicylink-get.md)|[microsoft.graph.networkaccess.filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) object.|
|[Update filteringPolicyLink](../api/networkaccess-filteringpolicylink-update.md)|[microsoft.graph.networkaccess.filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md)|Update the properties of a [microsoft.graph.networkaccess.filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) object.|
|[Delete filteringPolicyLink](../api/networkaccess-filteringpolicylink-delete.md)|None|Delete a [microsoft.graph.networkaccess.filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md) object.|
|[List policy](../api/networkaccess-policylink-list-policy.md)|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md) collection|Get the policy resources from the policy navigation property.|
|[Add policy](../api/networkaccess-filteringpolicylink-post-policy.md)|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md)|Add policy by posting to the policy collection.|
|[Remove policy](../api/networkaccess-filteringpolicylink-delete-policy.md)|None|Remove a [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.networkaccess.filteringPolicyAction|Traffic Action.The possible values are: `block`, `allow`.|
|createdDateTime|DateTimeOffset|created DateTime|
|id|String|Unique Id Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|last Modified DateTime|
|loggingState|microsoft.graph.networkaccess.status|Enable logging The possible values are: `enabled`, `disabled`.|
|priority|Int64|priority|
|state|microsoft.graph.networkaccess.status|status Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).The possible values are: `enabled`, `disabled`.|
|version|String|version Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policy|[policy](../resources/networkaccess-policy.md)|Filtering policy Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md)|

## JSON representation
The following is a JSON representation of the resource.
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
  "state": "String",
  "version": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "priority": "Integer",
  "action": "String",
  "loggingState": "String"
}
```

