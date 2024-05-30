---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.reports.get_credential_usage_summary(period='{period}').get_credential_usage_summary_with_period_request_builder import GetCredentialUsageSummaryWithPeriodRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = GetCredentialUsageSummaryWithPeriodRequestBuilder.GetCredentialUsageSummaryWithPeriodRequestBuilderGetQueryParameters(
		filter = "feature eq 'registration'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.reports.get_credential_usage_summary_with_period("{period}").get(request_configuration = request_configuration)


```