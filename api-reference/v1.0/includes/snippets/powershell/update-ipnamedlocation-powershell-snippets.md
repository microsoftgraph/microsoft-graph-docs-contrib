---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.ipNamedLocation"
	DisplayName = "Untrusted named location with only IPv4 address"
	IsTrusted = $false
	IpRanges = @(
		@{
			"@odata.type" = "#microsoft.graph.iPv4CidrRange"
			CidrAddress = "6.5.4.3/18"
		}
	)
}

Update-MgIdentityConditionalAccessNamedLocation -NamedLocationId $namedLocationId -BodyParameter $params

```