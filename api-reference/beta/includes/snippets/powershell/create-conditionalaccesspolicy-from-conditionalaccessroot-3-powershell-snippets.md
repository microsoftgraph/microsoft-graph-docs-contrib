---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	DisplayName = "Demo app for documentation"
	State = "disabled"
	Conditions = @{
		SignInRiskLevels = @(
			"high"
			"medium"
		)
		ClientAppTypes = @(
			"mobileAppsAndDesktopClients"
			"exchangeActiveSync"
			"other"
		)
		Applications = @{
			IncludeApplications = @(
				"All"
			)
			ExcludeApplications = @(
				"499b84ac-1321-427f-aa17-267ca6975798"
				"00000007-0000-0000-c000-000000000000"
				"de8bc8b5-d9f9-48b1-a8ad-b748da725064"
				"00000012-0000-0000-c000-000000000000"
				"797f4846-ba00-4fd7-ba43-dac1f8f63013"
				"05a65629-4c1b-48c1-a78b-804c4abdd4af"
				"7df0a125-d3be-4c96-aa54-591f83ff541c"
			)
			IncludeUserActions = @(
			)
		}
		Users = @{
			IncludeUsers = @(
				"a702a13d-a437-4a07-8a7e-8c052de62dfd"
			)
			ExcludeUsers = @(
				"124c5b6a-ffa5-483a-9b88-04c3fce5574a"
				"GuestsOrExternalUsers"
			)
			IncludeGroups = @(
			)
			ExcludeGroups = @(
			)
			IncludeRoles = @(
				"9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3"
				"cf1c38e5-3621-4004-a7cb-879624dced7c"
				"c4e39bd9-1100-46d3-8c65-fb160da0071f"
			)
			ExcludeRoles = @(
				"b0f54661-2d74-4c50-afa3-1ec803f12efe"
			)
		}
		Platforms = @{
			IncludePlatforms = @(
				"all"
			)
			ExcludePlatforms = @(
				"iOS"
				"windowsPhone"
			)
		}
		Locations = @{
			IncludeLocations = @(
				"AllTrusted"
			)
			ExcludeLocations = @(
				"00000000-0000-0000-0000-000000000000"
				"d2136c9c-b049-47ae-b9cf-316e04ef7198"
			)
		}
		DeviceStates = @{
			IncludeStates = @(
				"All"
			)
			ExcludeStates = @(
				"Compliant"
			)
		}
	}
	GrantControls = @{
		Operator = "OR"
		BuiltInControls = @(
			"mfa"
			"compliantDevice"
			"domainJoinedDevice"
			"approvedApplication"
			"compliantApplication"
		)
		CustomAuthenticationFactors = @(
		)
		TermsOfUse = @(
			"ce580154-086a-40fd-91df-8a60abac81a0"
			"7f29d675-caff-43e1-8a53-1b8516ed2075"
		)
	}
	SessionControls = @{
		ApplicationEnforcedRestrictions = $null
		PersistentBrowser = $null
		CloudAppSecurity = @{
			CloudAppSecurityType = "blockDownloads"
			IsEnabled = $true
		}
		SignInFrequency = @{
			Value = 4
			Type = "hours"
			IsEnabled = $true
		}
	}
}

New-MgIdentityConditionalAccessPolicy -BodyParameter $params

```