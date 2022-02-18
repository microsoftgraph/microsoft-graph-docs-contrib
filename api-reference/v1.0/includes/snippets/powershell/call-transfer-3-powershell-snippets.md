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
	ClientContext = "9e90d1c1-f61e-43e7-9f75-d420159aae08"
}

Move-MgCommunicationCall -CallId $callId -BodyParameter $params

```