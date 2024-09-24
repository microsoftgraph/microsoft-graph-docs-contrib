---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.sign_in_preferences import SignInPreferences
from msgraph_beta.generated.models.user_default_authentication_method_type import UserDefaultAuthenticationMethodType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SignInPreferences(
	user_preferred_method_for_secondary_authentication = UserDefaultAuthenticationMethodType.Oath,
)

result = await graph_client.users.by_user_id('user-id').authentication.sign_in_preferences.patch(request_body)


```