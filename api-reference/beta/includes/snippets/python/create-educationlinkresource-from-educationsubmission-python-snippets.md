---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.education_submission_resource import EducationSubmissionResource
from msgraph_beta.generated.models.education_link_resource import EducationLinkResource
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationSubmissionResource(
	resource = EducationLinkResource(
		display_name = "Wikipedia",
		link = "https://en.wikipedia.org/wiki/Main_Page",
		odata_type = "#microsoft.graph.educationLinkResource",
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').submissions.by_education_submission_id('educationSubmission-id').resources.post(request_body)


```