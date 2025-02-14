---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.exchange.mailboxes.item.folders.folders_request_builder import FoldersRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = FoldersRequestBuilder.FoldersRequestBuilderGetQueryParameters(
		filter = "type eq 'IPF.Appointment'",
		select = ["displayName","type"],
		top = 5,
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.admin.exchange.mailboxes.by_mailbox_id('mailbox-id').folders.get(request_configuration = request_configuration)


```