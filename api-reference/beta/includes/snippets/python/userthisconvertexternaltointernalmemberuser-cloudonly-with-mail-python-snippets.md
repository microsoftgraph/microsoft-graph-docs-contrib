---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.convert_external_to_internal_member_user.convert_external_to_internal_member_user_post_request_body import ConvertExternalToInternalMemberUserPostRequestBody
from msgraph_beta.generated.models.password_profile import PasswordProfile
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ConvertExternalToInternalMemberUserPostRequestBody(
	user_principal_name = "AdeleVance@contoso.com",
	password_profile = PasswordProfile(
		password = "Zdi087#2jhkahf",
		force_change_password_next_sign_in = True,
	),
	mail = "AdeleV@contoso.com",
)

result = await graph_client.users.by_user_id('user-id').convert_external_to_internal_member_user.post(request_body)


```