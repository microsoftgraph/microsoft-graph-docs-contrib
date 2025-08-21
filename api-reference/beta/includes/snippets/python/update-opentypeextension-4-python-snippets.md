---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.extension import Extension
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Extension(
	additional_data = {
			"extension_name" : "newExtensionName",
			"my_custom_string" : "Contoso data",
			"my_custom_bool" : False,
	}
)

result = await graph_client.sites.by_site_id('site-id').extensions.by_extension_id('extension-id').patch(request_body)


```