---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	DisplayName = "Contoso Install Site"
	WebUrl = "http://www.contoso.com/"
	Description = "Try or buy Contoso for Home or Business and view product information"
	Keywords = @{
		Keywords = @(
			"Contoso"
			"install"
		)
		ReservedKeywords = @(
			"Contoso"
		)
		MatchSimilarKeywords = $true
	}
	AvailabilityStartDateTime = $null
	AvailabilityEndDateTime = $null
	Platforms = @(
		"windows"
	)
	TargetedVariations = @(
		@{
			LanguageTag = "es-ES"
			DisplayName = "Sitio de instalación Contoso"
			Description = "Pruebe o compre Contoso hogar o negocios y vea la información del producto"
		}
	)
	GroupIds = @(
		"groupId"
	)
	PowerAppIds = @(
		"powerAppId"
	)
	State = "published"
}

New-MgSearchBookmark -BodyParameter $params

```