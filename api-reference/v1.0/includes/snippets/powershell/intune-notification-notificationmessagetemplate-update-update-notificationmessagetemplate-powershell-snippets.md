---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.notificationMessageTemplate"
	displayName = "Display Name value"
	defaultLocale = "Default Locale value"
	brandingOptions = "includeCompanyLogo"
	roleScopeTagIds = @(
		"Role Scope Tag Ids value"
	)
}

Update-MgDeviceManagementNotificationMessageTemplate -NotificationMessageTemplateId $notificationMessageTemplateId -BodyParameter $params

```