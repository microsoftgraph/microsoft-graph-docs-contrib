---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.service_principal import ServicePrincipal
from msgraph.generated.models.app_role import AppRole

graph_client = GraphServiceClient(credentials, scopes)

request_body = ServicePrincipal(
	app_roles = [
		AppRole(
			allowed_member_types = [
				"User",
			],
			description = "User",
			display_name = "User",
			id = UUID("8774f594-1d59-4279-b9d9-59ef09a23530"),
			is_enabled = True,
			origin = "Application",
			value = None,
		),
		AppRole(
			allowed_member_types = [
				"User",
			],
			description = "msiam_access",
			display_name = "msiam_access",
			id = UUID("e7f1a7f3-9eda-48e0-9963-bd67bf531afd"),
			is_enabled = True,
			origin = "Application",
			value = None,
		),
		AppRole(
			allowed_member_types = [
				"User",
			],
			description = "Admin,WAAD",
			display_name = "Admin,WAAD",
			id = UUID("3a84e31e-bffa-470f-b9e6-754a61e4dc63"),
			is_enabled = True,
			value = "arn:aws:iam::212743507312:role/accountname-aws-admin,arn:aws:iam::212743507312:saml-provider/WAAD",
		),
		AppRole(
			allowed_member_types = [
				"User",
			],
			description = "Finance,WAAD",
			display_name = "Finance,WAAD",
			id = UUID("7a960000-ded3-455b-8c04-4f2ace00319b"),
			is_enabled = True,
			value = "arn:aws:iam::212743507312:role/accountname-aws-finance,arn:aws:iam::212743507312:saml-provider/WAAD",
		),
	],
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').patch(request_body)


```