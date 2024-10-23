---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.windows_updates.deployment_audience import DeploymentAudience
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeploymentAudience(
)

result = await graph_client.admin.windows.updates.deployment_audiences.post(request_body)


```