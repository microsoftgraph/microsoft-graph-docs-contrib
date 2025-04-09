---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.education_class import EducationClass
from msgraph_beta.generated.models.education_external_source import EducationExternalSource
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationClass(
	description = "Health Level 1",
	class_code = "Health 501",
	display_name = "Health 1",
	external_id = "11019",
	external_name = "Health Level 1",
	external_source = EducationExternalSource.Sis,
	mail_nickname = "fineartschool.net",
)

result = await graph_client.education.classes.post(request_body)


```