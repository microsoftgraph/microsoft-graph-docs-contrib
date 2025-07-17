---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.person_certification import PersonCertification
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PersonCertification(
	issuing_authority = "International Academy of Marketing Excellence",
	issuing_company = "International Academy of Marketing Excellence",
)

result = await graph_client.users.by_user_id('user-id').profile.certifications.by_person_certification_id('personCertification-id').patch(request_body)


```