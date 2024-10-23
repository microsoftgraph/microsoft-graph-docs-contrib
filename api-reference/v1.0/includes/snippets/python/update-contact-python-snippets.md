---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.contact import Contact
from msgraph.generated.models.physical_address import PhysicalAddress
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Contact(
	home_address = PhysicalAddress(
		street = "123 Some street",
		city = "Seattle",
		state = "WA",
		postal_code = "98121",
	),
	birthday = "1974-07-22",
)

result = await graph_client.me.contacts.by_contact_id('contact-id').patch(request_body)


```