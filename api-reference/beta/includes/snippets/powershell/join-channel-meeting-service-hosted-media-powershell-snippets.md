---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	"@odata.type" = "#microsoft.graph.call"
	callbackUri = "https://bot.contoso.com/callback"
	requestedModalities = @(
		"audio"
	)
	mediaConfig = @{
		"@odata.type" = "#microsoft.graph.serviceHostedMediaConfig"
		preFetchMedia = @(
		)
	}
	chatInfo = @{
		"@odata.type" = "#microsoft.graph.chatInfo"
		threadId = "19:cbee7c1c860e465f8258e3cebf7bee0d@thread.skype"
		messageId = "1533758867081"
	}
	meetingInfo = @{
		"@odata.type" = "#microsoft.graph.organizerMeetingInfo"
		organizer = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			user = @{
				"@odata.type" = "#microsoft.graph.identity"
				id = "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96"
				tenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a"
				displayName = "Bob"
			}
		}
		allowConversationWithoutHost = $true
	}
}

New-MgCommunicationCall -BodyParameter $params

```