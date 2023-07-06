---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.deviceCompliancePolicySettingStateSummary"
	setting = "Setting value"
	settingName = "Setting Name value"
	platformType = "iOS"
	unknownDeviceCount = 2
	notApplicableDeviceCount = 8
	compliantDeviceCount = 4
	remediatedDeviceCount = 5
	nonCompliantDeviceCount = 7
	errorDeviceCount = 0
	conflictDeviceCount = 3
}

Update-MgDeviceManagementDeviceCompliancePolicySettingStateSummary -DeviceCompliancePolicySettingStateSummaryId $deviceCompliancePolicySettingStateSummaryId -BodyParameter $params

```