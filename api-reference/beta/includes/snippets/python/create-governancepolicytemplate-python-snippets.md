---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.tenant_governance_services.governance_policy_template import GovernancePolicyTemplate
from msgraph_beta.generated.models.tenant_governance_services.multi_tenant_applications_to_provision import MultiTenantApplicationsToProvision
from msgraph_beta.generated.models.tenant_governance_services.required_resource_access import RequiredResourceAccess
from msgraph_beta.generated.models.tenant_governance_services.resource_permission import ResourcePermission
from msgraph_beta.generated.models.permission_type import PermissionType
from msgraph_beta.generated.models.tenant_governance_services.delegated_administration_role_assignment import DelegatedAdministrationRoleAssignment
from msgraph_beta.generated.models.tenant_governance_services.role_template import RoleTemplate
from msgraph_beta.generated.models.group import Group
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GovernancePolicyTemplate(
	display_name = "Monitor Entra resource configurations",
	description = "Grants Global reader and provisions a custom multi-tenant application to monitor conditional access policies",
	multi_tenant_applications_to_provision = [
		MultiTenantApplicationsToProvision(
			app_id = "66667777-aaaa-8888-bbbb-9999cccc0000",
			object_id = "cccccccc-2222-3333-4444-dddddddddddd",
			display_name = "Mega Monitor",
			required_resource_accesses = [
				RequiredResourceAccess(
					resource_app_id = "00000003-0000-0000-c000-000000000000",
					permissions = [
						ResourcePermission(
							id = "633e0fce-8c58-4cfb-9495-12bbd5a24f7c",
							name = "Policy.Read.ConditionalAccess",
							type = PermissionType.Scope,
						),
						ResourcePermission(
							id = "e1fe6dd8-ba31-4d61-89e7-88639da4683d",
							name = "User.Read",
							type = PermissionType.Scope,
						),
					],
				),
			],
		),
	],
	delegated_administration_role_assignments = [
		DelegatedAdministrationRoleAssignment(
			role_templates = [
				RoleTemplate(
					id = "f2ef992c-3afb-46b9-b7cf-a126ee74c451",
					name = "Global Reader",
				),
			],
			group = Group(
				id = "ffffffff-5555-6666-7777-aaaaaaaaaaaa",
			),
		),
	],
)

result = await graph_client.directory.tenant_governance.governance_policy_templates.post(request_body)


```