---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.distributionlists.item.add_members.add_members_post_request_body import AddMembersPostRequestBody
from msgraph_beta.generated.models.member import Member
from msgraph_beta.generated.models.recipient_type import RecipientType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AddMembersPostRequestBody(
	members = [
		Member(
			display_name = "Megan Bowen",
			key = "MeganB@contoso.com",
			routing_type = "SMTP",
			recipient_type = RecipientType.Mailbox,
		),
	],
)

result = await graph_client.me.distribution_lists.by_distribution_list_id('distributionList-id').add_members.post(request_body)


```