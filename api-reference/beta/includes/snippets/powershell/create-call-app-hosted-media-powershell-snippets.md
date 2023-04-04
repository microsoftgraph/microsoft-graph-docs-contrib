---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	"@odata.type" = "#microsoft.graph.call"
	CallbackUri = "https://bot.contoso.com/callback"
	Source = @{
		"@odata.type" = "#microsoft.graph.participantInfo"
		Identity = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			Application = @{
				"@odata.type" = "#microsoft.graph.identity"
				DisplayName = "Calling Bot"
				Id = "2891555a-92ff-42e6-80fa-6e1300c6b5c6"
			}
		}
		Region = $null
		LanguageId = $null
	}
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
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.appHostedMediaConfig"
		Blob = "<Media Session Configuration>"
	}
}

New-MgCommunicationCall -BodyParameter $params

```