---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	definition = @(
	'{"HomeRealmDiscoveryPolicy":{"AccelerateToFederatedDomain":true,"PreferredDomain":"federated.example.edu","AlternateIdLogin":{"Enabled":true}}}'
)
displayName = "Contoso default HRD Policy"
}

Update-MgBetaPolicyHomeRealmDiscoveryPolicy -HomeRealmDiscoveryPolicyId $homeRealmDiscoveryPolicyId -BodyParameter $params

```