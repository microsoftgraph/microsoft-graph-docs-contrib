---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	definition = @(
		'{"HomeRealmDiscoveryPolicy":{"AccelerateToFederatedDomain":true,"PreferredDomain":"federated.example.edu","AlternateIdLogin":{"Enabled":true}}}'
	)
	displayName = "displayName-value"
	isOrganizationDefault = $true
}

New-MgBetaPolicyHomeRealmDiscoveryPolicy -BodyParameter $params

```