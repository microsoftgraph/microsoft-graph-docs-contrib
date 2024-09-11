---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.onlinemeetings.create_or_get.create_or_get_post_request_body import CreateOrGetPostRequestBody
from msgraph_beta.generated.models.meeting_participants import MeetingParticipants
from msgraph_beta.generated.models.meeting_participant_info import MeetingParticipantInfo
from msgraph_beta.generated.models.identity_set import IdentitySet
from msgraph_beta.generated.models.identity import Identity
from msgraph_beta.generated.models.online_meeting_role import OnlineMeetingRole
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CreateOrGetPostRequestBody(
	start_date_time = "2020-02-06T01:49:21.3524945+00:00",
	end_date_time = "2020-02-06T02:19:21.3524945+00:00",
	subject = "Create a meeting with customId provided",
	external_id = "7eb8263f-d0e0-4149-bb1c-1f0476083c56",
	participants = MeetingParticipants(
		attendees = [
			MeetingParticipantInfo(
				identity = IdentitySet(
					user = Identity(
						id = "1f35f2e6-9cab-44ad-8d5a-b74c14720000",
					),
				),
				role = OnlineMeetingRole.Presenter,
				upn = "test1@contoso.com",
			),
		],
	),
)

result = await graph_client.me.online_meetings.create_or_get.post(request_body)


```