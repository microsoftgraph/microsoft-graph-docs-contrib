---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.audit_logs.custom_security_attribute_audits.custom_security_attribute_audits_request_builder import CustomSecurityAttributeAuditsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = CustomSecurityAttributeAuditsRequestBuilder.CustomSecurityAttributeAuditsRequestBuilderGetQueryParameters(
		top = 1,
)

request_configuration = CustomSecurityAttributeAuditsRequestBuilder.CustomSecurityAttributeAuditsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.audit_logs.custom_security_attribute_audits.get(request_configuration = request_configuration)


```