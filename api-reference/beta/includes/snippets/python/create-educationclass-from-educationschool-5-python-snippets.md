---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.reference_create import ReferenceCreate
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReferenceCreate(
	odata_id = "https://graph.microsoft.com/beta/education/classes/11006",
)

await graph_client.education.schools.by_education_school_id('educationSchool-id').classes.ref.post(request_body)


```