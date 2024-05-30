---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	value = @(
		@{
			key = "BaseAddress"
			value = "user@domain.com"
		}
		@{
			key = "SecretToken"
			value = "password-value"
		}
		@{
			key = "SyncNotificationSettings"
			value = '{"Enabled":false,"DeleteThresholdEnabled":false}'
		}
		@{
			key = "SyncAll"
			value = "false"
		}
	)
}

Set-MgBetaServicePrincipalSynchronizationSecret -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```