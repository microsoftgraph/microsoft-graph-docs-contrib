---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Application()
on_premises_publishing = OnPremisesPublishing()
on_premises_publishing.externalauthenticationtype(ExternalAuthenticationType.AadPreAuthentication('externalauthenticationtype.aadpreauthentication'))

on_premises_publishing.internal_url = 'https://contosoiwaapp.com'

on_premises_publishing.external_url = 'https://contosoiwaapp-contoso.msappproxy.net'

on_premises_publishing.is_http_only_cookie_enabled = True

on_premises_publishing.is_on_prem_publishing_enabled = True

on_premises_publishing.is_persistent_cookie_enabled = True

on_premises_publishing.is_secure_cookie_enabled = True

on_premises_publishing.is_state_session_enabled = True

on_premises_publishing.is_translate_host_header_enabled = True

on_premises_publishing.is_translate_links_in_body_enabled = True


request_body.on_premises_publishing = on_premises_publishing



result = await client.applications.by_application_id('application-id').patch(request_body = request_body)


```