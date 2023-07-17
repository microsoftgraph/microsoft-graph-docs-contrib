---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ReferenceUpdate()
request_body.@odata_id = 'https://graph.microsoft.com/v1.0/education/me/rubrics/ceb3863e-6912-4ea9-ac41-3c2bb7b6672d'




await client.education.classes.by_classe_id('educationClass-id').assignments.by_assignment_id('educationAssignment-id').rubric.ref.put(request_body = request_body)


```