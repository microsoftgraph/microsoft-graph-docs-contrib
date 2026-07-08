---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.security.collaboration.analyzed_emails.analyzed_emails_request_builder import AnalyzedEmailsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = AnalyzedEmailsRequestBuilder.AnalyzedEmailsRequestBuilderGetQueryParameters(
		start_time = "2024-02-18",
		end_time = "2024-02-20",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.collaboration.analyzed_emails.get(request_configuration = request_configuration)


```