---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.reports.health_monitoring.alerts.alerts_request_builder import AlertsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = AlertsRequestBuilder.AlertsRequestBuilderGetQueryParameters(
		expand = ["enrichment/impacts/microsoft.graph.healthmonitoring.directoryobjectimpactsummary/resourceSampling"],
		select = ["alertType"," createdDateTime"," enrichment'"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.reports.health_monitoring.alerts.get(request_configuration = request_configuration)


```