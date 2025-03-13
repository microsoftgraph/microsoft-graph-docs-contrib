---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.contact import Contact
from msgraph_beta.generated.models.typed_email_address import TypedEmailAddress
from msgraph_beta.generated.models.email_type import EmailType
from msgraph_beta.generated.models.phone import Phone
from msgraph_beta.generated.models.phone_type import PhoneType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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