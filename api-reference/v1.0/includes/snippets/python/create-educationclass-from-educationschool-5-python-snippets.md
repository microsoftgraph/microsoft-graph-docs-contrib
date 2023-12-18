---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReferenceCreate(
	odata_id = "https://graph.microsoft.com/v1.0/education/classes/11006",
)

await graph_client.education.schools.by_education_school_id('educationSchool-id').classes.ref.post(request_body)


```