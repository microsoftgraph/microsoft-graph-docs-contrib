---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	TransferTarget = @{
		EndpointType = "default"
		Identity = @{
			Phone = @{
				"@odata.type" = "#microsoft.graph.identity"
				Id = "+12345678901"
			}
		}
		LanguageId = "languageId-value"
		Region = "region-value"
	}
}

Move-MgCommunicationCall -CallId $callId -BodyParameter $params

```