---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.countryNamedLocation"
	DisplayName = "Updated named location without unknown countries and regions"
	CountriesAndRegions = @(
		"CA"
		"IN"
	)
	IncludeUnknownCountriesAndRegions = $false
}

Update-MgIdentityConditionalAccessNamedLocation -NamedLocationId $namedLocationId -BodyParameter $params

```