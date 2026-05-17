---
title: "cloudFirewallPolicyLink resource type"
description: "Links a cloud firewall policy to a filtering profile in Global Secure Access."
author: "shkhalid"
ms.date: 01/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# cloudFirewallPolicyLink resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Links a [cloudFirewallPolicy](../resources/networkaccess-cloudfirewallpolicy.md) to a [filteringProfile](../resources/networkaccess-filteringprofile.md) in Global Secure Access. This link enables the cloud firewall capabilities to be applied to network traffic for the associated resource. Each filtering profile can have only one cloud firewall policy.

Inherits from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).

## Methods

For supported API operations, see [filteringPolicyLink](../resources/networkaccess-filteringpolicylink.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the cloud firewall policy link. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md). Key. Not nullable. Read-only.|
|state|microsoft.graph.networkaccess.status|The operational state of the policy link that determines whether the cloud firewall policy is actively applied to network traffic. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md). The possible values are: `enabled`, `disabled`, `unknownFutureValue`. Supports `$filter` (`eq`).|
|version|String|The version of the policy link, used for tracking changes. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|policy|[microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md)|The [cloud firewall policy](../resources/networkaccess-cloudfirewallpolicy.md) associated with this link. The link connects the policy to filtering profiles, enabling the cloud firewall capabilities to be applied to network traffic. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md). Supports `$expand`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.cloudFirewallPolicyLink",
  "baseType": "microsoft.graph.networkaccess.policyLink",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallPolicyLink",
  "id": "String (identifier)",
  "state": "String",
  "version": "String"
}
```
