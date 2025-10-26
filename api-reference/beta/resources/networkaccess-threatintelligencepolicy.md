---
title: "threatIntelligencePolicy resource type"
description: "Represents a policy that defines how threat intelligence is evaluated and enforced in network access decisions through Global Secure Access."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# threatIntelligencePolicy resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a policy that defines how threat intelligence is evaluated and enforced in network access decisions through Global Secure Access. This policy type allows you to apply security controls based on known threats and malicious destinations.


Inherits from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-networkaccessroot-list-threatintelligencepolicies.md)|[microsoft.graph.networkaccess.threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md) collection|Get a list of the threatIntelligencePolicy objects and their properties.|
|[Create](../api/networkaccess-networkaccessroot-post-threatintelligencepolicies.md)|[microsoft.graph.networkaccess.threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md)|Create a new threatIntelligencePolicy object.|
|[Get](../api/networkaccess-threatintelligencepolicy-get.md)|[microsoft.graph.networkaccess.threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md)|Read the properties and relationships of a threatIntelligencePolicy object.|
|[Update](../api/networkaccess-threatintelligencepolicy-update.md)|[microsoft.graph.networkaccess.threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md)|Update the properties of a threatIntelligencePolicy object.|
|[Delete](../api/networkaccess-networkaccessroot-delete-threatintelligencepolicies.md)|None|Delete a threatIntelligencePolicy object.|
|[List policyRules](../api/networkaccess-threatintelligencepolicy-list-policyrules.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection|Get a list of the rules associated with this threat intelligence policy.|
|[Create policyRule](../api/networkaccess-threatintelligencepolicy-post-policyrules.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md)|Create a new policyRule object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|A description of the threat intelligence policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Supports `$filter` (`eq`).|
|id|String|The unique identifier for the threat intelligence policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Inherits from [entity](../resources/entity.md). Supports `$filter` (`eq`).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the policy was last modified.|
|name|String|The display name of the threat intelligence policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Supports `$filter` (`eq`).|
|settings|[microsoft.graph.networkaccess.threatIntelligencePolicySettings](../resources/networkaccess-threatintelligencepolicysettings.md)|Settings that define how the threat intelligence policy operates and evaluates threats.|
|version|String|The version of the policy, used for tracking changes. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policyRules|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) collection|The collection of rules that define how the threat intelligence policy is applied. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.threatIntelligencePolicy",
  "baseType": "microsoft.graph.networkaccess.policy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligencePolicy",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "version": "String",
  "kind": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "settings": {
    "@odata.type": "microsoft.graph.networkaccess.threatIntelligencePolicySettings"
  }
}
```

