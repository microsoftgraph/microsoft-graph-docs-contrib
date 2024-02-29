---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_submission_resource import EducationSubmissionResource
from msgraph.generated.models.education_media_resource import EducationMediaResource

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationSubmissionResource(
	resource = EducationMediaResource(
		display_name = "category.jpg",
		file_url = "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RK2WLKUUBAA4ZBKXNBL6QFC2TKG",
		odata_type = "#microsoft.graph.educationMediaResource",
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').submissions.by_education_submission_id('educationSubmission-id').resources.post(request_body)


```