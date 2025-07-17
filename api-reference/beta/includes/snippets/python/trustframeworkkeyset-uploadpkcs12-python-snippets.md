---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.trustframework.keysets.item.upload_pkcs12.upload_pkcs12_post_request_body import UploadPkcs12PostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UploadPkcs12PostRequestBody(
	key = "Base64-encoded-pfx-content",
	password = "password-value",
)

result = await graph_client.trust_framework.key_sets.by_trust_framework_key_set_id('trustFrameworkKeySet-id').upload_pkcs12.post(request_body)


```