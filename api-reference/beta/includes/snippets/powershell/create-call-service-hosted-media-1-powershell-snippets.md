---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	"@odata.type" = "#microsoft.graph.call"
	CallbackUri = "https://bot.contoso.com/callback"
	Targets = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				User = @{
					"@odata.type" = "#microsoft.graph.identity"
					DisplayName = "John"
					Id = "112f7296-5fa4-42ca-bae8-6a692b15d4b8"
				}
			}
		}
	)
	RequestedModalities = @(
		"audio"
	)
	CallOptions = @{
		"@odata.type" = "#microsoft.graph.outgoingCallOptions"
		IsContentSharingNotificationEnabled = $true
	}
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.serviceHostedMediaConfig"
	}
}

New-MgCommunicationCall -BodyParameter $params

```