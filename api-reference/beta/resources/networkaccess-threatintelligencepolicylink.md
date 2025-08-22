---
title: "threatIntelligencePolicyLink resource type"
description: "Links a threat intelligence policy to an application, service, or other resource in the network access system."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# threatIntelligencePolicyLink resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Links a [threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md) to a [filteringProfile](../resources/networkaccess-filteringprofile.md) in Global Secure Access. This link enables the threat intelligence capabilities to be applied to network traffic for the associated resource.


Inherits from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-threatintelligencepolicylink-list.md)|[microsoft.graph.networkaccess.threatIntelligencePolicyLink](../resources/networkaccess-threatintelligencepolicylink.md) collection|Get a list of the threatIntelligencePolicyLink objects and their properties.|
|[Create](../api/networkaccess-threatintelligencepolicylink-post-policy.md)|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md)|Add a policy by posting to the policy collection associated with this threat intelligence policy link.|
|[Get](../api/networkaccess-threatintelligencepolicylink-get.md)|[microsoft.graph.networkaccess.threatIntelligencePolicyLink](../resources/networkaccess-threatintelligencepolicylink.md)|Read the properties and relationships of a threatIntelligencePolicyLink object.|
|[Update](../api/networkaccess-threatintelligencepolicylink-update.md)|[microsoft.graph.networkaccess.threatIntelligencePolicyLink](../resources/networkaccess-threatintelligencepolicylink.md)|Update the properties of a threatIntelligencePolicyLink object.|
|[Delete](../api/networkaccess-threatintelligencepolicylink-delete.md)|None|Delete a threatIntelligencePolicyLink object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the threat intelligence policy link. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md). Inherits from [entity](../resources/entity.md)|
|state|microsoft.graph.networkaccess.status|The operational state of the policy link that determines if the threat intelligence policy is actively applied to network traffic. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).The possible values are: `enabled`, `disabled`, `unknownFutureValue`. Supports `$filter` (`eq`).| 
|version|String|The version of the policy link, used for tracking changes. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policy|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md)|The threat intelligence policy associated with this link. The link connects the policy to filtering profiles, enabling the threat intelligence capabilities to be applied to network traffic. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md). Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.threatIntelligencePolicyLink",
  "baseType": "microsoft.graph.networkaccess.policyLink",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligencePolicyLink",
  "id": "String (identifier)",
  "state": "String",
  "version": "String"
}
```

