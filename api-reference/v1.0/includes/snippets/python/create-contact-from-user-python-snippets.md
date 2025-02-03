---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.contact import Contact
from msgraph.generated.models.email_address import EmailAddress
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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