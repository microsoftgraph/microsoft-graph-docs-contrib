---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	AddLicenses = @(
		@{
			DisabledPlans = @(
				"11b0131d-43c8-4bbb-b2c8-e80f9a50834a"
			)
			SkuId = "skuId-value-1"
		}
		@{
			DisabledPlans = @(
				"a571ebcc-fqe0-4ca2-8c8c-7a284fd6c235"
			)
			SkuId = "skuId-value-2"
		}
	)
	RemoveLicenses = @(
	)
}

# A UPN can also be used as -UserId.
Set-MgUserLicense -UserId $userId -BodyParameter $params

```