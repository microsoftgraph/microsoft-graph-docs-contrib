---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.translate_exchange_ids.translate_exchange_ids_post_request_body import TranslateExchangeIdsPostRequestBody
from msgraph_beta.generated.models.exchange_id_format import ExchangeIdFormat

graph_client = GraphServiceClient(credentials, scopes)

request_body = TranslateExchangeIdsPostRequestBody(
	input_ids = [
		"{rest-formatted-id-1}",
		"{rest-formatted-id-2}",
	],
	source_id_type = ExchangeIdFormat.RestId,
	target_id_type = ExchangeIdFormat.RestImmutableEntryId,
)

result = await graph_client.me.translate_exchange_ids.post(request_body)


```