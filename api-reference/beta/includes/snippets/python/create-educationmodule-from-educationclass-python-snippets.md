---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.education_module import EducationModule
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationModule(
	display_name = "Module 2",
	language_tag = "en-GB",
	description = "Description for Module 2",
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').modules.post(request_body)


```