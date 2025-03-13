---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.contact import Contact
from msgraph_beta.generated.models.typed_email_address import TypedEmailAddress
from msgraph_beta.generated.models.email_type import EmailType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Contact(
	email_addresses = [
		TypedEmailAddress(
			type = EmailType.Personal,
			name = "Pavel Bansky",
			address = "pavelb@contoso.com",
		),
		TypedEmailAddress(
			address = "pavelb@contoso.com",
			name = "Pavel Bansky",
			type = EmailType.Other,
			other_label = "Volunteer work",
		),
	],
)

result = await graph_client.me.contacts.by_contact_id('contact-id').patch(request_body)


```