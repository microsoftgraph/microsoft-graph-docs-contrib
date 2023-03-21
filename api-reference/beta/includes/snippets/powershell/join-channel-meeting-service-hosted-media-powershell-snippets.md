---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	"@odata.type" = "#microsoft.graph.call"
	CallbackUri = "https://bot.contoso.com/callback"
	RequestedModalities = @(
		"audio"
	)
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.serviceHostedMediaConfig"
		PreFetchMedia = @(
		)
	}
	ChatInfo = @{
		"@odata.type" = "#microsoft.graph.chatInfo"
		ThreadId = "19:cbee7c1c860e465f8258e3cebf7bee0d@thread.skype"
		MessageId = "1533758867081"
	}
	MeetingInfo = @{
		"@odata.type" = "#microsoft.graph.organizerMeetingInfo"
		Organizer = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			User = @{
				"@odata.type" = "#microsoft.graph.identity"
				Id = "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96"
				TenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a"
				DisplayName = "Bob"
			}
		}
		AllowConversationWithoutHost = $true
	}
}

New-MgCommunicationCall -BodyParameter $params

```