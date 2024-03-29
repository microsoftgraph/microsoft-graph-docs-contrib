---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.agreements.item.file.file_request_builder import FileRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = FileRequestBuilder.FileRequestBuilderGetRequestConfiguration()
request_configuration.headers.add("Accept-Language", "fr-FR")


result = await graph_client.agreements.by_agreement_id('agreement-id').file.get(request_configuration = request_configuration)


```