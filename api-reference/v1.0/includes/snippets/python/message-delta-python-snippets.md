---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.mail_folders.item.messages.delta.delta_request_builder import DeltaRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = DeltaRequestBuilder.DeltaRequestBuilderGetRequestConfiguration()
request_configuration.headers.add("Prefer", "odata.maxpagesize=2")


result = await graph_client.me.mail_folders.by_mail_folder_id('mailFolder-id').messages.delta.get(request_configuration = request_configuration)


```