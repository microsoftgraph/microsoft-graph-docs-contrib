---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_user import EducationUser
from msgraph.generated.models.related_contact import RelatedContact

graph_client = GraphServiceClient(credentials, scopes)

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