---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.administrative_unit import AdministrativeUnit
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AdministrativeUnit(
	display_name = "Executive Division",
	membership_type = "Dynamic",
	membership_rule = "(user.country -eq \"United States\")",
	membership_rule_processing_state = "On",
)

result = await graph_client.administrative_units.by_administrative_unit_id('administrativeUnit-id').patch(request_body)


```