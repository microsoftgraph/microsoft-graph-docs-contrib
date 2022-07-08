---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	Targets = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				Phone = @{
					"@odata.type" = "#microsoft.graph.identity"
					Id = "+12345678901"
				}
			}
		}
	)
	CallbackUri = "https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039"
}

Invoke-MgRedirectCommunicationCall -CallId $callId -BodyParameter $params

```