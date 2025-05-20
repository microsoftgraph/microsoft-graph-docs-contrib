---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.qr_pin import QrPin
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = QrPin(
	odata_type = "#microsoft.graph.qrPin",
	code = "09599786",
)

result = await graph_client.users.by_user_id('user-id').authentication.qr_code_pin_method.pin.patch(request_body)


```