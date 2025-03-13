---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.information_protection.bitlocker.recovery_keys.item.bitlocker_recovery_key_item_request_builder import BitlockerRecoveryKeyItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = BitlockerRecoveryKeyItemRequestBuilder.BitlockerRecoveryKeyItemRequestBuilderGetQueryParameters(
		select = ["key"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)
request_configuration.headers.add("User-Agent", "Dsreg/10.0")
request_configuration.headers.add("ocp-client-name", "My Friendly Client")
request_configuration.headers.add("ocp-client-version", "1.2")


result = await graph_client.information_protection.bitlocker.recovery_keys.by_bitlocker_recovery_key_id('bitlockerRecoveryKey-id').get(request_configuration = request_configuration)


```