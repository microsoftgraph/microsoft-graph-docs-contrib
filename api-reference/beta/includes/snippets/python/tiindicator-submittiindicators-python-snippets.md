---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.security.tiindicators.submit_ti_indicators.submit_ti_indicators_post_request_body import SubmitTiIndicatorsPostRequestBody
from msgraph.generated.models.ti_indicator import TiIndicator

graph_client = GraphServiceClient(credentials, scopes)

request_body = SubmitTiIndicatorsPostRequestBody(
	value = [
		TiIndicator(
			activity_group_names = [
			],
			confidence = 0,
			description = "This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.",
			expiration_date_time = "2019-03-01T21:44:03.1668987+00:00",
			external_id = "Test--8586509942423126760MS164-0",
			file_hash_type = FileHashType.Sha256,
			file_hash_value = "b555c45c5b1b01304217e72118d6ca1b14b7013644a078273cea27bbdc1cf9d6",
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
		),
		TiIndicator(
			activity_group_names = [
			],
			confidence = 0,
			description = "This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.",
			expiration_date_time = "2019-03-01T21:44:03.1748779+00:00",
			external_id = "Test--8586509942423126760MS164-1",
			file_hash_type = FileHashType.Sha256,
			file_hash_value = "1796b433950990b28d6a22456c9d2b58ced1bdfcdf5f16f7e39d6b9bdca4213b",
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
		),
	],
)

result = await graph_client.security.ti_indicators.submit_ti_indicators.post(request_body)


```