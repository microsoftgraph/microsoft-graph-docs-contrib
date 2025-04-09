---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.multi_tenant_organization_identity_sync_policy_template import MultiTenantOrganizationIdentitySyncPolicyTemplate
from msgraph_beta.generated.models.template_application_level import TemplateApplicationLevel
from msgraph_beta.generated.models.cross_tenant_user_sync_inbound import CrossTenantUserSyncInbound
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MultiTenantOrganizationIdentitySyncPolicyTemplate(
	template_application_level = TemplateApplicationLevel.NewPartners | TemplateApplicationLevel.ExistingPartners,
	user_sync_inbound = CrossTenantUserSyncInbound(
		is_sync_allowed = True,
	),
)

result = await graph_client.policies.cross_tenant_access_policy.templates.multi_tenant_organization_identity_synchronization.patch(request_body)


```