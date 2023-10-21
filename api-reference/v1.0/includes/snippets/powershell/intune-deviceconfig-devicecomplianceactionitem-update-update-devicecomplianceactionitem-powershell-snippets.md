---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.deviceComplianceActionItem"
	gracePeriodHours = 0
	actionType = "notification"
	notificationTemplateId = "Notification Template Id value"
	notificationMessageCCList = @(
		"Notification Message CCList value"
	)
}

Update-MgDeviceManagementDeviceCompliancePolicyScheduledActionForRuleScheduledActionConfiguration -DeviceCompliancePolicyId $deviceCompliancePolicyId -DeviceComplianceScheduledActionForRuleId $deviceComplianceScheduledActionForRuleId -DeviceComplianceActionItemId $deviceComplianceActionItemId -BodyParameter $params

```