---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.administrative_unit import AdministrativeUnit
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AdministrativeUnit(
	display_name = "Executive Division",
	description = "Executive division administration",
	is_member_management_restricted = True,
)

result = await graph_client.directory.administrative_units.post(request_body)


```