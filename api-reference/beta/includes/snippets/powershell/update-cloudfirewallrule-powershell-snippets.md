---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	description = "Updated rule description"
	priority = 
}

Update-MgBetaNetworkAccessCloudFirewallPolicyRule -CloudFirewallPolicyId $cloudFirewallPolicyId -PolicyRuleId $policyRuleId -BodyParameter $params

```