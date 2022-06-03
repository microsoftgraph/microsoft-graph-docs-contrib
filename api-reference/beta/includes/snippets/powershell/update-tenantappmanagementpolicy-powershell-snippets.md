---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	IsEnabled = $true
	ApplicationRestrictions = @{
		PasswordCredentials = @(
			@{
				RestrictionType = "passwordAddition"
				MaxLifetime = $null
				RestrictForAppsCreatedAfterDateTime = [System.DateTime]::Parse("2021-01-01T10:37:00Z")
			}
			@{
				RestrictionType = "passwordLifetime"
				MaxLifetime = "P4DT12H30M5S"
				RestrictForAppsCreatedAfterDateTime = [System.DateTime]::Parse("2017-01-01T10:37:00Z")
			}
			@{
				RestrictionType = "symmetricKeyAddition"
				MaxLifetime = $null
				RestrictForAppsCreatedAfterDateTime = [System.DateTime]::Parse("2021-01-01T10:37:00Z")
			}
			@{
				RestrictionType = "customPasswordAddition"
				MaxLifetime = $null
				RestrictForAppsCreatedAfterDateTime = [System.DateTime]::Parse("2015-01-01T10:37:00Z")
			}
			@{
				RestrictionType = "symmetricKeyLifetime"
				MaxLifetime = "P40D"
				RestrictForAppsCreatedAfterDateTime = [System.DateTime]::Parse("2015-01-01T10:37:00Z")
			}
		)
		KeyCredentials = @(
			@{
				RestrictionType = "asymmetricKeyLifetime"
				MaxLifetime = "P30D"
				RestrictForAppsCreatedAfterDateTime = [System.DateTime]::Parse("2015-01-01T10:37:00Z")
			}
		)
	}
}

Update-MgPolicyDefaultAppManagementPolicy -BodyParameter $params

```