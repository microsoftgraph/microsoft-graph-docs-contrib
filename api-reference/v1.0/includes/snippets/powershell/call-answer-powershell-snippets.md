---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	callbackUri = "callbackUri-value"
	mediaConfig = @{
		"@odata.type" = "#microsoft.graph.appHostedMediaConfig"
		blob = "<Media Session Configuration Blob>"
	}
	acceptedModalities = @(
		"audio"
	)
	callOptions = @{
		"@odata.type" = "#microsoft.graph.incomingCallOptions"
		isContentSharingNotificationEnabled = $true
	}
	participantCapacity = 200
}

Invoke-MgAnswerCommunicationCall -CallId $callId -BodyParameter $params

```