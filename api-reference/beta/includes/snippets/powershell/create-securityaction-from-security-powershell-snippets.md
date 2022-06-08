---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	Name = "BlockIp"
	ActionReason = "Test"
	Parameters = @(
		@{
			Name = "IP"
			Value = "1.2.3.4"
		}
	)
	VendorInformation = @{
		Provider = "Windows Defender ATP"
		Vendor = "Microsoft"
	}
}

New-MgSecurityAction -BodyParameter $params

```