---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	TransferTarget = @{
		"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
		EndpointType = "default"
		Identity = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			User = @{
				"@odata.type" = "#microsoft.graph.identity"
				Id = "550fae72-d251-43ec-868c-373732c2704f"
				TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47"
				DisplayName = "Heidi Steen"
			}
		}
		LanguageId = "en-us"
		Region = "amer"
		ReplacesCallId = "e5d39592-99bd-4db8-bca8-30fb894ec51d"
	}
}

Move-MgCommunicationCall -CallId $callId -BodyParameter $params

```