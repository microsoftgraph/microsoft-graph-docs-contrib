---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	isEnabled = $true
	applicationRestrictions = @{
		passwordCredentials = @(
			@{
				restrictionType = "passwordAddition"
				maxLifetime = $null
				restrictForAppsCreatedAfterDateTime = [System.DateTime]::Parse("2021-01-01T10:37:00Z")
			}
			@{
				restrictionType = "passwordLifetime"
				maxLifetime = "P90D"
				restrictForAppsCreatedAfterDateTime = [System.DateTime]::Parse("2017-01-01T10:37:00Z")
			}
			@{
				restrictionType = "symmetricKeyAddition"
				maxLifetime = $null
				restrictForAppsCreatedAfterDateTime = [System.DateTime]::Parse("2021-01-01T10:37:00Z")
			}
			@{
				restrictionType = "customPasswordAddition"
				maxLifetime = $null
				restrictForAppsCreatedAfterDateTime = [System.DateTime]::Parse("2015-01-01T10:37:00Z")
			}
			@{
				restrictionType = "symmetricKeyLifetime"
				maxLifetime = "P30D"
				restrictForAppsCreatedAfterDateTime = [System.DateTime]::Parse("2015-01-01T10:37:00Z")
			}
		)
		keyCredentials = @(
			@{
				restrictionType = "asymmetricKeyLifetime"
				maxLifetime = "P30D"
				restrictForAppsCreatedAfterDateTime = [System.DateTime]::Parse("2015-01-01T10:37:00Z")
			}
		)
	}
}

Update-MgBetaPolicyDefaultAppManagementPolicy -BodyParameter $params

```