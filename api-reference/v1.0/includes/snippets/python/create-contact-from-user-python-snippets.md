---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = Contact(
	given_name = "Pavel",
	surname = "Bansky",
	email_addresses = [
		EmailAddress(
			address = "pavelb@fabrikam.onmicrosoft.com",
			name = "Pavel Bansky",
		),
	],
	business_phones = [
		"+1 732 555 0102",
	],
)

result = await graph_client.me.contacts.post(request_body)


```