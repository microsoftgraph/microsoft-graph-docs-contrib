---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.DeviceManagement

$params = @{
	severity = "informational"
	enabled = $true
	threshold = @{
		aggregation = "count"
		operator = "greaterOrEqual"
		target = 90
	}
	notificationChannels = @(
		@{
			notificationChannelType = "portal"
			receivers = @(
				""
			)
			notificationReceivers = @(
			)
		}
		@{
			notificationChannelType = "email"
			receivers = @(
				"serena.davis@contoso.com"
			)
			notificationReceivers = @(
				@{
					locale = "en-us"
					contactInformation = "serena.davis@contoso.com"
				}
			)
		}
	)
}

Update-MgBetaDeviceManagementMonitoringAlertRule -AlertRuleId $alertRuleId -BodyParameter $params

```