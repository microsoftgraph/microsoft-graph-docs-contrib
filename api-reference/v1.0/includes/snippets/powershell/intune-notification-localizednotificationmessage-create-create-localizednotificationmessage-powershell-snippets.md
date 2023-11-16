---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	"@odata.type" = "#microsoft.graph.localizedNotificationMessage"
	locale = "Locale value"
	subject = "Subject value"
	messageTemplate = "Message Template value"
	isDefault = $true
}

New-MgDeviceManagementNotificationMessageTemplateLocalizedNotificationMessage -NotificationMessageTemplateId $notificationMessageTemplateId -BodyParameter $params

```