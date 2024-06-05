---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.ChangeNotifications

$params = @{
	changeType = "created,updated"
	notificationUrl = "https://webhook.azurewebsites.net/api/resourceNotifications"
	resource = "/teams/{id}/channels/{id}/messages"
	includeResourceData = $true
	encryptionCertificate = '{base64encodedCertificate}'
	encryptionCertificateId = '{customId}'
	expirationDateTime = [System.DateTime]::Parse("2019-09-19T11:00:00.0000000Z")
	clientState = '{secretClientState}'
}

New-MgSubscription -BodyParameter $params

```