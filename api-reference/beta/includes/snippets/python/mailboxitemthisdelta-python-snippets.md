---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.exchange.mailboxes.item.folders.item.items.delta.delta_request_builder import DeltaRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

request_configuration = RequestConfiguration()
request_configuration.headers.add("Prefer", "odata.maxpagesize=2")


result = await graph_client.admin.exchange.mailboxes.by_mailbox_id('mailbox-id').folders.by_mailbox_folder_id('mailboxFolder-id').items.delta.get(request_configuration = request_configuration)


```