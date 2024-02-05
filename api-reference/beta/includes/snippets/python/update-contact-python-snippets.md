---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = Contact(
	email_addresses = [
		TypedEmailAddress(
			type = EmailType.Personal,
			name = "Pavel Bansky",
			address = "pavelb@adatum.onmicrosoft.com",
		),
		TypedEmailAddress(
			address = "pavelb@fabrikam.onmicrosoft.com",
			name = "Pavel Bansky",
			type = EmailType.Other,
			other_label = "Volunteer work",
		),
	],
)

result = await graph_client.me.contacts.by_contact_id('contact-id').patch(request_body)


```