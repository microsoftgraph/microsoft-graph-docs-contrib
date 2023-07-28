---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AuthenticationContextClassReference()
request_body.display_name = 'Contoso medium'

request_body.description = 'Medium protection level defined for Contoso policy'

request_body.is_available = True




result = await client.identity.conditional_access.authentication_context_cla_references.by_authentication_context_clas_reference_id('authenticationContextClassReference-id').patch(request_body = request_body)


```