---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.CloudCommunications

$params = @{
	transferTarget = @{
		endpointType = "default"
		identity = @{
			phone = @{
				"@odata.type" = "#microsoft.graph.identity"
				id = "+12345678901"
			}
		}
		languageId = "languageId-value"
		region = "region-value"
	}
}

Move-MgBetaCommunicationCall -CallId $callId -BodyParameter $params

```