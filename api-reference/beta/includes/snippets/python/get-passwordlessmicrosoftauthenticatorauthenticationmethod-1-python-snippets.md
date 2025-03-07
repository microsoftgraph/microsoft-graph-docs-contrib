---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.me.authentication.passwordless_microsoft_authenticator_methods.by_passwordless_microsoft_authenticator_authentication_method_id('passwordlessMicrosoftAuthenticatorAuthenticationMethod-id').get()


```