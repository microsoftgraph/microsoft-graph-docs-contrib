---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.ChangeNotifications

$params = @{
	changeType = "created"
	notificationUrl = "https://webhook.azurewebsites.net/api/send/myNotifyClient"
	resource = "users/622eaaff-0683-4862-9de4-f2ec83c2bd98/messages?$select=Subject,bodyPreview,importance,receivedDateTime,from"
	expirationDateTime = [System.DateTime]::Parse("2022-01-01T21:42:18.2257768+00:00")
	clientState = "secretClientValue"
	includeResourceData = $true
	encryptionCertificate = "MIIDMzCCAhugAwIBAgIQE7D+++Dk1hKQBqWA=="
	encryptionCertificateId = "testCertificateId"
}

New-MgSubscription -BodyParameter $params

```