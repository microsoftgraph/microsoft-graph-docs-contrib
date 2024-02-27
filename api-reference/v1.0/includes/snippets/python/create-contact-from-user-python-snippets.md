---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.contact import Contact
from msgraph.generated.models.email_address import EmailAddress

graph_client = GraphServiceClient(credentials, scopes)

request_body = Contact(
	given_name = "Pavel",
	surname = "Bansky",
	email_addresses = [
		EmailAddress(
			address = "pavelb@contoso.com",
			name = "Pavel Bansky",
		),
	],
	business_phones = [
		"+1 732 555 0102",
	],
)

result = await graph_client.me.contacts.post(request_body)


```