---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ti_indicator import TiIndicator
from msgraph_beta.generated.models.ti_action import TiAction
from msgraph_beta.generated.models.file_hash_type import FileHashType
from msgraph_beta.generated.models.tlp_level import TlpLevel
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TiIndicator(
	action = TiAction.Alert,
	activity_group_names = [
	],
	confidence = 0,
	description = "This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.",
	expiration_date_time = "2019-03-01T21:43:37.5031462+00:00",
	external_id = "Test--8586509942679764298MS501",
	file_hash_type = FileHashType.Sha256,
	file_hash_value = "aa64428647b57bf51524d1756b2ed746e5a3f31b67cf7fe5b5d8a9daf07ca313",
	kill_chain = [
	],
	malware_family_names = [
	],
	severity = 0,
	tags = [
	],
	target_product = "Azure Sentinel",
	threat_type = "WatchList",
	tlp_level = TlpLevel.Green,
)

result = await graph_client.security.ti_indicators.post(request_body)


```