---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	CallbackUri = "callbackUri-value"
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.appHostedMediaConfig"
		Blob = "<Media Session Configuration Blob>"
	}
	AcceptedModalities = @(
		"audio"
	)
	CallOptions = @{
		"@odata.type" = "#microsoft.graph.incomingCallOptions"
		IsContentSharingNotificationEnabled = $true
	}
	ParticipantCapacity = 200
}

Invoke-MgAnswerCommunicationCall -CallId $callId -BodyParameter $params

```