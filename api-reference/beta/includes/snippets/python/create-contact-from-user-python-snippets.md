---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.contact import Contact
from msgraph.generated.models.typed_email_address import TypedEmailAddress
from msgraph.generated.models.phone import Phone

graph_client = GraphServiceClient(credentials, scopes)

request_body = Contact(
	given_name = "Pavel",
	surname = "Bansky",
	email_addresses = [
		TypedEmailAddress(
			address = "pavelb@contoso.com",
			name = "Pavel Bansky",
			type = EmailType.Personal,
		),
		TypedEmailAddress(
			address = "pavelb@contoso.com",
			name = "Pavel Bansky",
			type = EmailType.Other,
			other_label = "Volunteer work",
		),
	],
	phones = [
		Phone(
			number = "+1 732 555 0102",
			type = PhoneType.Business,
		),
	],
)

result = await graph_client.me.contacts.post(request_body)


```