---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.ipNamedLocation"
	displayName = "Untrusted IP named location"
	isTrusted = $false
	ipRanges = @(
		@{
			"@odata.type" = "#microsoft.graph.iPv4CidrRange"
			cidrAddress = "12.34.221.11/22"
		}
		@{
			"@odata.type" = "#microsoft.graph.iPv6CidrRange"
			cidrAddress = "2001:0:9d38:90d6:0:0:0:0/63"
		}
	)
}

New-MgIdentityConditionalAccessNamedLocation -BodyParameter $params

```