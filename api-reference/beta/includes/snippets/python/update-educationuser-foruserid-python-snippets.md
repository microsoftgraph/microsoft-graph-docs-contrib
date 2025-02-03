---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.education_user import EducationUser
from msgraph_beta.generated.models.related_contact import RelatedContact
from msgraph_beta.generated.models.contact_relationship import ContactRelationship
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationUser(
	related_contacts = [
		RelatedContact(
			display_name = "Father Time",
			email_address = "father@time.com",
			mobile_phone = "4251231234",
			relationship = ContactRelationship.Guardian,
			access_consent = True,
		),
		RelatedContact(
			display_name = "Mother Nature",
			email_address = "mother@nature.co.uk",
			mobile_phone = "3251231234",
			relationship = ContactRelationship.Parent,
			access_consent = True,
		),
	],
)

result = await graph_client.education.users.by_education_user_id('educationUser-id').patch(request_body)


```