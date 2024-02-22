---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.application import Application
from msgraph.generated.models.on_premises_publishing import OnPremisesPublishing

graph_client = GraphServiceClient(credentials, scopes)

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