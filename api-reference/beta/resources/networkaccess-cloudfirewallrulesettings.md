---
title: "cloudFirewallRuleSettings resource type"
description: "Represents the configuration settings for a cloud firewall rule, including the enabled or disabled status."
author: "shkhalid"
ms.date: 01/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# cloudFirewallRuleSettings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration settings for a [cloud firewall rule](../resources/networkaccess-cloudfirewallrule.md), including the enabled or disabled status.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|status|microsoft.graph.networkaccess.securityRuleStatus|The status of the rule. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.cloudFirewallRuleSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallRuleSettings",
  "status": "String"
}
```
