---
title: "cloudFirewallRule resource type"
description: "Represents a firewall rule that defines conditions and actions for network traffic filtering within a cloud firewall policy."
author: "shkhalid"
ms.date: 01/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# cloudFirewallRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a firewall rule that defines conditions and actions for network traffic filtering within a [cloud firewall policy](../resources/networkaccess-cloudfirewallpolicy.md). Each rule specifies matching conditions for source and destination addresses, ports, and protocols, along with an action to take when traffic matches the conditions.

Inherits from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-cloudfirewallpolicy-list-policyrules.md)|[microsoft.graph.networkaccess.cloudFirewallRule](../resources/networkaccess-cloudfirewallrule.md) collection|Get a list of the cloudFirewallRule objects and their properties.|
|[Create](../api/networkaccess-cloudfirewallpolicy-post-policyrules.md)|[microsoft.graph.networkaccess.cloudFirewallRule](../resources/networkaccess-cloudfirewallrule.md)|Create a new cloudFirewallRule object.|
|[Get](../api/networkaccess-cloudfirewallrule-get.md)|[microsoft.graph.networkaccess.cloudFirewallRule](../resources/networkaccess-cloudfirewallrule.md)|Read the properties and relationships of a cloudFirewallRule object.|
|[Update](../api/networkaccess-cloudfirewallrule-update.md)|None|Update the properties of a cloudFirewallRule object.|
|[Delete](../api/networkaccess-cloudfirewallrule-delete.md)|None|Delete a cloudFirewallRule object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.networkaccess.cloudFirewallAction|The action to take when traffic matches the rule conditions. The possible values are: `allow`, `block`, `unknownFutureValue`. Required.|
|description|String|A human-readable description of the rule's purpose. Optional.|
|id|String|A unique identifier for the rule. Inherited from [microsoft.graph.entity](../resources/entity.md). Key. Not nullable. Read-only.|
|matchingConditions|[microsoft.graph.networkaccess.cloudFirewallMatchingConditions](../resources/networkaccess-cloudfirewallmatchingconditions.md)|The conditions that network traffic must match for the rule to apply. Required.|
|name|String|A unique display name for the rule. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md). Required.|
|priority|Int64|A unique priority value that determines the rule evaluation order; lower values are evaluated first. Required.|
|settings|[microsoft.graph.networkaccess.cloudFirewallRuleSettings](../resources/networkaccess-cloudfirewallrulesettings.md)|Configuration settings for the rule, including the enabled or disabled status. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.cloudFirewallRule",
  "baseType": "microsoft.graph.networkaccess.policyRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallRule",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "priority": "Integer",
  "action": "String",
  "settings": {
    "@odata.type": "microsoft.graph.networkaccess.cloudFirewallRuleSettings"
  },
  "matchingConditions": {
    "@odata.type": "microsoft.graph.networkaccess.cloudFirewallMatchingConditions"
  }
}
```
