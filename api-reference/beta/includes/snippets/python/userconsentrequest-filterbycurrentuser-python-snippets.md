---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identity_governance.app_consent.app_consent_requests.item.user_consent_requests.filter_by_current_user(on='{on}').filter_by_current_user_with_on_request_builder import FilterByCurrentUserWithOnRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = FilterByCurrentUserWithOnRequestBuilder.FilterByCurrentUserWithOnRequestBuilderGetQueryParameters(
		filter = " (status eq 'Completed')",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.identity_governance.app_consent.app_consent_requests.by_app_consent_request_id('appConsentRequest-id').user_consent_requests.filter_by_current_user_with_on("reviewer").get(request_configuration = request_configuration)


```