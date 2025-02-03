---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.organization import Organization
from msgraph.generated.models.mdm_authority import MdmAuthority
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Organization(
	odata_type = "#microsoft.graph.organization",
	mobile_device_management_authority = MdmAuthority.Intune,
)

result = await graph_client.organization.by_organization_id('organization-id').patch(request_body)


```