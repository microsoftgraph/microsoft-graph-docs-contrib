---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.reports.app_credential_sign_in_activities.app_credential_sign_in_activities_request_builder import AppCredentialSignInActivitiesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = AppCredentialSignInActivitiesRequestBuilder.AppCredentialSignInActivitiesRequestBuilderGetQueryParameters(
		filter = "keyId eq '83f45296-fb8f-4aaa-a399-ac51084e02b7'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.reports.app_credential_sign_in_activities.get(request_configuration = request_configuration)


```