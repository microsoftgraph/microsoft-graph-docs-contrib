---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.multi_tenant_organization_identity_sync_policy_template import MultiTenantOrganizationIdentitySyncPolicyTemplate
from msgraph.generated.models.cross_tenant_user_sync_inbound import CrossTenantUserSyncInbound

graph_client = GraphServiceClient(credentials, scopes)

request_body = MultiTenantOrganizationIdentitySyncPolicyTemplate(
	template_application_level = TemplateApplicationLevel.NewPartners | TemplateApplicationLevel.ExistingPartners,
	user_sync_inbound = CrossTenantUserSyncInbound(
		is_sync_allowed = True,
	),
)

result = await graph_client.policies.cross_tenant_access_policy.templates.multi_tenant_organization_identity_synchronization.patch(request_body)


```