---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

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
	]
	phones = [
		Phone(
			number = "+1 732 555 0102",
			type = PhoneType.Business,
		),
	]
)

result = await graph_client.me.contacts.post(body = request_body)


```