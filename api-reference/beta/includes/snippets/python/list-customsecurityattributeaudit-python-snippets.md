---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.audit_logs.custom_security_attribute_audits.custom_security_attribute_audits_request_builder import CustomSecurityAttributeAuditsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = CustomSecurityAttributeAuditsRequestBuilder.CustomSecurityAttributeAuditsRequestBuilderGetQueryParameters(
		top = 1,
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.audit_logs.custom_security_attribute_audits.get(request_configuration = request_configuration)


```