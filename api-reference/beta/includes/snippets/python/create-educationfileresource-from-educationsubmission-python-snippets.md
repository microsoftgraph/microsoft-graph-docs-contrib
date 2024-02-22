---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_submission_resource import EducationSubmissionResource
from msgraph.generated.models.education_file_resource import EducationFileResource

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationSubmissionResource(
	resource = EducationFileResource(
		display_name = "_FTP_EDC-61424749-250820211136.pdf",
		file_url = "https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXodJYOAkI7rTLhw7ME_e42J/items/01QTY63RL45XVPGDBRW5FLDR62Z5TCMGG3",
		odata_type = "#microsoft.graph.educationFileResource",
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').submissions.by_education_submission_id('educationSubmission-id').resources.post(request_body)


```