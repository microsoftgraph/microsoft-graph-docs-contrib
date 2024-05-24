---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.sign_in_preferences import SignInPreferences
from msgraph_beta.generated.models.user_default_authentication_method_type import UserDefaultAuthenticationMethodType

graph_client = GraphServiceClient(credentials, scopes)

request_body = SignInPreferences(
	user_preferred_method_for_secondary_authentication = UserDefaultAuthenticationMethodType.Oath,
)

result = await graph_client.users.by_user_id('user-id').authentication.sign_in_preferences.patch(request_body)


```