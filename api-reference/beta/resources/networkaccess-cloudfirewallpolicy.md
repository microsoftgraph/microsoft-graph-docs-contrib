---
title: "cloudFirewallPolicy resource type"
description: "Represents a cloud firewall policy for Microsoft Global Secure Access that provides Layer 3 network traffic filtering and control."
author: "shkhalid"
ms.date: 01/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# cloudFirewallPolicy resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cloud firewall policy for Microsoft Global Secure Access that provides Layer 3 (Network) protection by monitoring and controlling all network traffic. A cloud firewall policy takes effect once the admin associates it with the desired filtering profile. For more information, see [Configure Global Secure Access cloud firewall (preview)](/entra/global-secure-access/how-to-configure-cloud-firewall).

Inherits from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-networkaccessroot-list-cloudfirewallpolicies.md)|[microsoft.graph.networkaccess.cloudFirewallPolicy](../resources/networkaccess-cloudfirewallpolicy.md) collection|Get a list of the cloudFirewallPolicy objects and their properties.|
|[Create](../api/networkaccess-networkaccessroot-post-cloudfirewallpolicies.md)|[microsoft.graph.networkaccess.cloudFirewallPolicy](../resources/networkaccess-cloudfirewallpolicy.md)|Create a new cloudFirewallPolicy object.|
|[Get](../api/networkaccess-cloudfirewallpolicy-get.md)|[microsoft.graph.networkaccess.cloudFirewallPolicy](../resources/networkaccess-cloudfirewallpolicy.md)|Read the properties and relationships of a cloudFirewallPolicy object.|
|[Update](../api/networkaccess-cloudfirewallpolicy-update.md)|None|Update the properties of a cloudFirewallPolicy object.|
|[Delete](../api/networkaccess-cloudfirewallpolicy-delete.md)|None|Delete a cloudFirewallPolicy object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|description|String|A description of the policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Optional.|
|id|String|A unique identifier for the policy. Inherited from [microsoft.graph.entity](../resources/entity.md). Key. Not nullable. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the policy was last modified. Read-only.|
|name|String|A unique display name for the policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Required.|
|settings|[microsoft.graph.networkaccess.cloudFirewallPolicySettings](../resources/networkaccess-cloudfirewallpolicysettings.md)|Configuration settings for the cloud firewall policy, including the default action. Required.|
|version|String|The version of the policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|policyRules|[microsoft.graph.networkaccess.cloudFirewallRule](../resources/networkaccess-cloudfirewallrule.md) collection|The rules that define specific firewall behaviors within this policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Supports `$expand`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.cloudFirewallPolicy",
  "baseType": "microsoft.graph.networkaccess.policy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.cloudFirewallPolicy",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "version": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "settings": {
    "@odata.type": "microsoft.graph.networkaccess.cloudFirewallPolicySettings"
  }
}
```
