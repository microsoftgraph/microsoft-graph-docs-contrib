---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.ChangeNotifications

$params = @{
	changeType = "created,updated"
	notificationUrl = "https://webhook.azurewebsites.net/notificationClient"
	resource = "/me/mailfolders('inbox')/messages"
	expirationDateTime = [System.DateTime]::Parse("2016-03-20T11:00:00.0000000Z")
	clientState = "SecretClientState"
}

New-MgSubscription -BodyParameter $params

```