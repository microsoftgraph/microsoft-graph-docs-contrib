---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	transferTarget = @{
		endpointType = "default"
		identity = @{
			user = @{
				id = "550fae72-d251-43ec-868c-373732c2704f"
				tenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47"
				displayName = "Heidi Steen"
			}
		}
		languageId = "languageId-value"
		region = "region-value"
	}
}

Move-MgCommunicationCall -CallId $callId -BodyParameter $params

```