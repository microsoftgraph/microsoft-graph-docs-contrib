---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.countryNamedLocation"
	displayName = "Updated named location without unknown countries and regions"
	countriesAndRegions = @(
		"CA"
		"IN"
	)
	includeUnknownCountriesAndRegions = $false
}

Update-MgBetaIdentityConditionalAccessNamedLocation -NamedLocationId $namedLocationId -BodyParameter $params

```