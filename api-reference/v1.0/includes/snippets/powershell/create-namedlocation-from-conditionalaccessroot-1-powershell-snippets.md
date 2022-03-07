---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.ipNamedLocation"
	DisplayName = "Untrusted IP named location"
	IsTrusted = $false
	IpRanges = @(
		@{
			"@odata.type" = "#microsoft.graph.iPv4CidrRange"
			CidrAddress = "12.34.221.11/22"
		}
		@{
			"@odata.type" = "#microsoft.graph.iPv6CidrRange"
			CidrAddress = "2001:0:9d38:90d6:0:0:0:0/63"
		}
	)
}

New-MgIdentityConditionalAccessNamedLocation -BodyParameter $params

```