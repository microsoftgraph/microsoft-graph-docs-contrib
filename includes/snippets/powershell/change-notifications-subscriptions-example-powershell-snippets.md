---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.ChangeNotifications

$params = @{
	ChangeType = "created,updated"
	NotificationUrl = "https://webhook.azurewebsites.net/notificationClient"
	Resource = "/me/mailfolders('inbox')/messages"
	ExpirationDateTime = [System.DateTime]::Parse("2016-03-20T11:00:00.0000000Z")
	ClientState = "SecretClientState"
}

New-MgSubscription -BodyParameter $params

```