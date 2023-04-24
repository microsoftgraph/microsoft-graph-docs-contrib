---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	callbackUri = "https://bot.contoso.com/api/calls"
	acceptedModalities = @(
		"audio"
	)
	mediaConfig = @{
		"@odata.type" = "#microsoft.graph.appHostedMediaConfig"
		blob = "<Media Session Configuration Blob>"
	}
}

Invoke-MgAnswerCommunicationCall -CallId $callId -BodyParameter $params

```