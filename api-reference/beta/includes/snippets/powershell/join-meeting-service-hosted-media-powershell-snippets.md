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
		threadId = "19:meeting_Win6Ydo4wsMijFjZS00ZGVjLTk5MGUtOTRjNWY2NmNkYTFm@thread.v2"
		messageId = "0"
	}
	meetingInfo = @{
		"@odata.type" = "#microsoft.graph.organizerMeetingInfo"
		organizer = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			user = @{
				"@odata.type" = "#microsoft.graph.identity"
				id = "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96"
				tenantId = "9f386a15-f9cc-445b-8106-ac85e314a07b"
				displayName = "Bob"
			}
		}
		allowConversationWithoutHost = $true
	}
	tenantId = "86dc81db-c112-4228-9222-63f3esaa1edb"
}

New-MgCommunicationCall -BodyParameter $params

```