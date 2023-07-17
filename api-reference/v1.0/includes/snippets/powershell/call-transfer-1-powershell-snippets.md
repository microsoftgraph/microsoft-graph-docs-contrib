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
				displayName = "Heidi Steen"
			}
		}
	}
}

Move-MgCommunicationCall -CallId $callId -BodyParameter $params

```