---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.reference_update import ReferenceUpdate
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReferenceUpdate(
	odata_id = "https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationproxy/connectorGroups/3e6f4c35-a04b-4d03-b98a-66fff89b72e6",
)

await graph_client.applications.by_application_id('application-id').connector_group.ref.put(request_body)


```