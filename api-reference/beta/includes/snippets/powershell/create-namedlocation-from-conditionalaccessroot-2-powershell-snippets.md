---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.countryNamedLocation"
	displayName = "Named location with unknown countries and regions"
	countriesAndRegions = @(
		"US"
		"GB"
	)
	includeUnknownCountriesAndRegions = $true
}

New-MgIdentityConditionalAccessNamedLocation -BodyParameter $params

```