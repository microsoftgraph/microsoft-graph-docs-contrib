---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.email_authentication_method_configuration import EmailAuthenticationMethodConfiguration
from msgraph_beta.generated.models.external_email_otp_state import ExternalEmailOtpState
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EmailAuthenticationMethodConfiguration(
	odata_type = "#microsoft.graph.emailAuthenticationMethodConfiguration",
	allow_external_id_to_use_email_otp = ExternalEmailOtpState.Disabled,
)

result = await graph_client.policies.authentication_methods_policy.authentication_method_configurations.by_authentication_method_configuration_id('authenticationMethodConfiguration-id').patch(request_body)


```