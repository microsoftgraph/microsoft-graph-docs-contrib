---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.custom_block_page import CustomBlockPage
from msgraph_beta.generated.models.status import Status
from msgraph_beta.generated.models.networkaccess.markdown_block_message_configuration import MarkdownBlockMessageConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CustomBlockPage(
	state = Status.Enabled,
	configuration = MarkdownBlockMessageConfiguration(
		odata_type = "#microsoft.graph.networkaccess.markdownBlockMessageConfiguration",
		body = "Your admin at NaaSLitware has blocked your access. [Click here for NaaSLitware's Terms of Use](https://www.bing.com).",
	),
)

result = await graph_client.network_access.settings.custom_block_page.patch(request_body)


```