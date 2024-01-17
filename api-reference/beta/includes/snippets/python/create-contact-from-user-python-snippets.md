---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = Contact(
	given_name = "Pavel",
	surname = "Bansky",
	email_addresses = [
		TypedEmailAddress(
			address = "pavelb@contoso.onmicrosoft.com",
			name = "Pavel Bansky",
			type = EmailType.Personal,
		),
		TypedEmailAddress(
			address = "pavelb@fabrikam.onmicrosoft.com",
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