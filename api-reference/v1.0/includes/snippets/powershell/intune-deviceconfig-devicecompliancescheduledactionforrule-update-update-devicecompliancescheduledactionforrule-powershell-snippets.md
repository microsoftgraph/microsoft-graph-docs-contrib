---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.deviceComplianceScheduledActionForRule"
	ruleName = "Rule Name value"
}

Update-MgDeviceManagementDeviceCompliancePolicyScheduledActionForRule -DeviceCompliancePolicyId $deviceCompliancePolicyId -DeviceComplianceScheduledActionForRuleId $deviceComplianceScheduledActionForRuleId -BodyParameter $params

```