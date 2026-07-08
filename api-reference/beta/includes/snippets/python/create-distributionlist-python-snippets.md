---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.distribution_list import DistributionList
from msgraph_beta.generated.models.member import Member
from msgraph_beta.generated.models.recipient_type import RecipientType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DistributionList(
	display_name = "Project Team",
	members = [
		Member(
			display_name = "Adele Vance",
			recipient_type = RecipientType.Mailbox,
			additional_data = {
					"email_address" : "AdeleV@contoso.com",
			}
		),
		Member(
			display_name = "Alex Wilber",
			recipient_type = RecipientType.Mailbox,
			additional_data = {
					"email_address" : "AlexW@contoso.com",
			}
		),
	],
)

result = await graph_client.me.distribution_lists.post(request_body)


```