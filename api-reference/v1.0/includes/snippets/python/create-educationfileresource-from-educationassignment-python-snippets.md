---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_assignment_resource import EducationAssignmentResource
from msgraph.generated.models.education_file_resource import EducationFileResource

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationAssignmentResource(
	distribute_for_student_work = False,
	resource = EducationFileResource(
		display_name = "article.pdf",
		odata_type = "#microsoft.graph.educationFileResource",
		additional_data = {
				"file" : {
						"odataid" : "https://graph.microsoft.com/v1.0/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RPHKSP6THE4ORD2RQAR6MQLF26G",
				},
		}
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').resources.post(request_body)


```