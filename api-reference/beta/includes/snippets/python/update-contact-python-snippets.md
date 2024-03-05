---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.contact import Contact
from msgraph.generated.models.typed_email_address import TypedEmailAddress

graph_client = GraphServiceClient(credentials, scopes)

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