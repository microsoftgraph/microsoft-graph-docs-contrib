---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.CloudCommunications

$params = @{
	participants = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				phone = @{
					"@odata.type" = "#microsoft.graph.identity"
					id = "+12345678901"
				}
			}
		}
	)
	clientContext = "f2fa86af-3c51-4bc2-8fc0-475452d9764f"
}

Invoke-MgBetaInviteCommunicationCallParticipant -CallId $callId -BodyParameter $params

```