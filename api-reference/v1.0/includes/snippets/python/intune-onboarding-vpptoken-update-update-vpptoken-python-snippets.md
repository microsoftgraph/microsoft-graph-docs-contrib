---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.vpp_token import VppToken
from msgraph.generated.models.vpp_token_account_type import VppTokenAccountType
from msgraph.generated.models.vpp_token_state import VppTokenState
from msgraph.generated.models.vpp_token_sync_status import VppTokenSyncStatus
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = VppToken(
	odata_type = "#microsoft.graph.vppToken",
	organization_name = "Organization Name value",
	vpp_token_account_type = VppTokenAccountType.Education,
	apple_id = "Apple Id value",
	expiration_date_time = "2016-12-31T23:57:57.2481234-08:00",
	last_sync_date_time = "2017-01-01T00:02:49.3205976-08:00",
	token = "Token value",
	state = VppTokenState.Valid,
	last_sync_status = VppTokenSyncStatus.InProgress,
	automatically_update_apps = True,
	country_or_region = "Country Or Region value",
)

result = await graph_client.device_app_management.vpp_tokens.by_vpp_token_id('vppToken-id').patch(request_body)


```