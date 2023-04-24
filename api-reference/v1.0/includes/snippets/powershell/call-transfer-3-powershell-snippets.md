---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

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
	clientContext = "9e90d1c1-f61e-43e7-9f75-d420159aae08"
}

Move-MgCommunicationCall -CallId $callId -BodyParameter $params

```