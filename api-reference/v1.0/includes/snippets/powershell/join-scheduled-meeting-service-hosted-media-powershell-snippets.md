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
		ThreadId = "19:meeting_Win6Ydo4wsMijFjZS00ZGVjLTk5MGUtOTRjNWY2NmNkYTFm@thread.v2"
		MessageId = "0"
	}
	MeetingInfo = @{
		"@odata.type" = "#microsoft.graph.organizerMeetingInfo"
		Organizer = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			User = @{
				"@odata.type" = "#microsoft.graph.identity"
				Id = "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96"
				DisplayName = "Bob"
				TenantId = "86dc81db-c112-4228-9222-63f3esaa1edb"
			}
		}
		AllowConversationWithoutHost = $true
	}
	TenantId = "86dc81db-c112-4228-9222-63f3esaa1edb"
}

New-MgCommunicationCall -BodyParameter $params

```