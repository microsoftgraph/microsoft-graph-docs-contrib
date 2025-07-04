---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.reports.health_monitoring.alerts.item.alert_item_request_builder import AlertItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = AlertItemRequestBuilder.AlertItemRequestBuilderGetQueryParameters(
		expand = ["enrichment/impacts/microsoft.graph.healthmonitoring.directoryobjectimpactsummary/resourceSampling"],
		select = ["alertType"," createdDateTime"," enrichment'"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.reports.health_monitoring.alerts.by_alert_id('alert-id').get(request_configuration = request_configuration)


```