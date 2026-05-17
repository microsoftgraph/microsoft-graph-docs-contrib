---
title: "cloudFirewallPolicySettings resource type"
description: "Represents the configuration settings for a cloud firewall policy, including the default action to apply when no matching rules are found."
author: "shkhalid"
ms.date: 01/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# cloudFirewallPolicySettings resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration settings for a [cloud firewall policy](../resources/networkaccess-cloudfirewallpolicy.md), including the default action to apply when no matching rules are found.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|defaultAction|microsoft.graph.networkaccess.cloudFirewallAction|The default action applied when no matching rules are found. The possible values are: `allow`, `block`, `unknownFutureValue`. Only `allow` is currently supported. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.cloudFirewallPolicySettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallPolicySettings",
  "defaultAction": "String"
}
```
