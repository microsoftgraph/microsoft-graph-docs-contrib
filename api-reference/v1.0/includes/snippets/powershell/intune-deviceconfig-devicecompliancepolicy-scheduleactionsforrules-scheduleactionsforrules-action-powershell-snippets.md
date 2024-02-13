---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.DeviceManagement.Actions

$params = @{
	deviceComplianceScheduledActionForRules = @(
		@{
			"@odata.type" = "#microsoft.graph.deviceComplianceScheduledActionForRule"
			id = "f0075d5e-5d5e-f007-5e5d-07f05e5d07f0"
			ruleName = "Rule Name value"
		}
	)
}

Invoke-MgBetaScheduleDeviceManagementDeviceCompliancePolicyActionForRule -DeviceCompliancePolicyId $deviceCompliancePolicyId -BodyParameter $params

```