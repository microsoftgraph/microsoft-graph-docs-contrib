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
	conditions = @(
		@{
			relationshipType = "or"
			conditionCategory = "azureNetworkConnectionCheckFailures"
			aggregation = "count"
			operator = "greaterOrEqual"
			thresholdValue = "90"
		}
	)
	notificationChannels = @(
		@{
			notificationChannelType = "portal"
			notificationReceivers = @(
			)
		}
		@{
			notificationChannelType = "email"
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