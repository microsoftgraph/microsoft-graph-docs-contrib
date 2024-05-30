---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.ipNamedLocation"
	displayName = "Untrusted named location with only IPv4 address"
	isTrusted = $false
	ipRanges = @(
		@{
			"@odata.type" = "#microsoft.graph.iPv4CidrRange"
			cidrAddress = "6.5.4.3/18"
		}
	)
}

Update-MgBetaIdentityConditionalAccessNamedLocation -NamedLocationId $namedLocationId -BodyParameter $params

```