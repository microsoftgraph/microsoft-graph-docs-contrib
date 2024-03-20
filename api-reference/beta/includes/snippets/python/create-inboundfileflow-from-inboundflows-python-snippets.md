---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.inbound_file_flow import InboundFileFlow

graph_client = GraphServiceClient(credentials, scopes)

request_body = InboundFileFlow(
	odata_type = "#microsoft.graph.industryData.inboundFileFlow",
	data_domain = InboundDomain.EducationRostering,
	display_name = "Inbound rostering flow",
	effective_date_time = "2023-03-12T16:40:46.924769+05:30",
	expiration_date_time = "2023-03-13T16:40:46.924769+05:30",
	additional_data = {
			"data_connector@odata_bind" : "https://graph.microsoft.com/beta/external/industryData/dataConnectors/51dca0a0-85f6-4478-f526-08daddab2271",
			"year@odata_bind" : "https://graph.microsoft.com/beta/external/industryData/years/ebf18762-ab92-487e-21d1-08daddab28bb",
	}
)

result = await graph_client.external.industry_data.inbound_flows.post(request_body)


```