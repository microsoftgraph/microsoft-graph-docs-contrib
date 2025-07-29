---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.mutual_tls_oauth_configuration import MutualTlsOauthConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MutualTlsOauthConfiguration(
	display_name = "THIS_IS_A_NEW_NAME",
)

result = await graph_client.directory.certificate_authorities.mutual_tls_oauth_configurations.by_mutual_tls_oauth_configuration_id('mutualTlsOauthConfiguration-id').patch(request_body)


```