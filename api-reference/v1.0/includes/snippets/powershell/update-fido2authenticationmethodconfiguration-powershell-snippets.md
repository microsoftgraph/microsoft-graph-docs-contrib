---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.fido2AuthenticationMethodConfiguration"
	id = "Fido2"
	state = "disabled"
	isSelfServiceRegistrationAllowed = $true
	isAttestationEnforced = $true
	keyRestrictions = @{
		isEnforced = $false
		enforcementType = "block"
		aaGuids = @(
		)
	}
	includeTargets = @(
		@{
			targetType = "group"
			id = "all_users"
			isRegistrationRequired = $false
			allowedPasskeyProfiles = @(
			"00000000-0000-0000-0000-000000000001"
		)
	}
)
excludeTargets = @(
)
passkeyProfiles = @(
	@{
		id = "00000000-0000-0000-0000-000000000001"
		name = "Default passkey profile"
		passkeyTypes = "deviceBound,synced"
		attestationEnforcement = "disabled"
		keyRestrictions = @{
			isEnforced = $false
			enforcementType = "allow"
			aaGuids = @(
			)
		}
	}
)
}

Update-MgPolicyAuthenticationMethodPolicyAuthenticationMethodConfiguration -AuthenticationMethodConfigurationId $authenticationMethodConfigurationId -BodyParameter $params

```