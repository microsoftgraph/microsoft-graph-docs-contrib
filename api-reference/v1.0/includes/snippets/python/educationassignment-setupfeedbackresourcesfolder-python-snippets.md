---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SetUpFeedbackResourcesFolderPostRequestBody(
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').set_up_feedback_resources_folder.post(request_body)


```