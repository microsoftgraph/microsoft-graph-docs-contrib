---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.deviceComplianceScheduledActionForRule"
	ruleName = "Rule Name value"
}

New-MgDeviceManagementDeviceCompliancePolicyScheduledActionForRule -DeviceCompliancePolicyId $deviceCompliancePolicyId -BodyParameter $params

```