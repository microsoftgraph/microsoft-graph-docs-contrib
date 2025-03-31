---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.security.data_discovery.cloud_app_discovery.uploaded_streams.by_cloud_app_discovery_report_id('cloudAppDiscoveryReport-id').microsoft_graph_security_aggregated_apps_details_with_period("{period}").get()


```