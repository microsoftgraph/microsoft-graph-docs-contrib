---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.education.classes.item.modules.item.set_up_resources_folder.set_up_resources_folder_post_request_body import SetUpResourcesFolderPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = SetUpResourcesFolderPostRequestBody(
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').modules.by_education_module_id('educationModule-id').set_up_resources_folder.post(request_body)


```