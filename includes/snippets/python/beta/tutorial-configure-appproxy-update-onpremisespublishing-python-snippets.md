---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.application import Application
from msgraph_beta.generated.models.on_premises_publishing import OnPremisesPublishing
from msgraph_beta.generated.models.external_authentication_type import ExternalAuthenticationType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Application(
	on_premises_publishing = OnPremisesPublishing(
		external_authentication_type = ExternalAuthenticationType.AadPreAuthentication,
		internal_url = "https://contosoiwaapp.com",
		external_url = "https://contosoiwaapp-contoso.msappproxy.net",
		is_http_only_cookie_enabled = True,
		is_on_prem_publishing_enabled = True,
		is_persistent_cookie_enabled = True,
		is_secure_cookie_enabled = True,
		is_state_session_enabled = True,
		is_translate_host_header_enabled = True,
		is_translate_links_in_body_enabled = True,
	),
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```