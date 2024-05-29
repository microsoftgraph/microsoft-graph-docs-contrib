---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.threat_intelligence.whois_records.whois_records_request_builder import WhoisRecordsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = WhoisRecordsRequestBuilder.WhoisRecordsRequestBuilderGetQueryParameters(
		search = "\"admin/address/state:WA",
		orderby = ["registrationDateTime desc""],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.threat_intelligence.whois_records.get(request_configuration = request_configuration)


```