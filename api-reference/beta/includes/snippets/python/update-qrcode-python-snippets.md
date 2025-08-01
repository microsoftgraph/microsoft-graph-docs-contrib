---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.qr_code import QrCode
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = QrCode(
	odata_type = "#microsoft.graph.qrCode",
	expire_date_time = "2025-12-01T12:00:00Z",
)

result = await graph_client.me.authentication.qr_code_pin_method.standard_q_r_code.patch(request_body)


```