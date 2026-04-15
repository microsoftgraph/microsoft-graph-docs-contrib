---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.tenantgovernanceservices.GovernancePolicyTemplate governancePolicyTemplate = new com.microsoft.graph.beta.models.tenantgovernanceservices.GovernancePolicyTemplate();
governancePolicyTemplate.setDisplayName("Monitor Entra resource configurations");
governancePolicyTemplate.setDescription("Grants Global reader and provisions a custom multi-tenant application to monitor conditional access policies");
LinkedList<com.microsoft.graph.beta.models.tenantgovernanceservices.MultiTenantApplicationsToProvision> multiTenantApplicationsToProvision = new LinkedList<com.microsoft.graph.beta.models.tenantgovernanceservices.MultiTenantApplicationsToProvision>();
com.microsoft.graph.beta.models.tenantgovernanceservices.MultiTenantApplicationsToProvision multiTenantApplicationsToProvision1 = new com.microsoft.graph.beta.models.tenantgovernanceservices.MultiTenantApplicationsToProvision();
multiTenantApplicationsToProvision1.setAppId("66667777-aaaa-8888-bbbb-9999cccc0000");
multiTenantApplicationsToProvision1.setObjectId("cccccccc-2222-3333-4444-dddddddddddd");
multiTenantApplicationsToProvision1.setDisplayName("Mega Monitor");
LinkedList<com.microsoft.graph.beta.models.tenantgovernanceservices.RequiredResourceAccess> requiredResourceAccesses = new LinkedList<com.microsoft.graph.beta.models.tenantgovernanceservices.RequiredResourceAccess>();
com.microsoft.graph.beta.models.tenantgovernanceservices.RequiredResourceAccess requiredResourceAccess = new com.microsoft.graph.beta.models.tenantgovernanceservices.RequiredResourceAccess();
requiredResourceAccess.setResourceAppId("00000003-0000-0000-c000-000000000000");
LinkedList<com.microsoft.graph.beta.models.tenantgovernanceservices.ResourcePermission> permissions = new LinkedList<com.microsoft.graph.beta.models.tenantgovernanceservices.ResourcePermission>();
com.microsoft.graph.beta.models.tenantgovernanceservices.ResourcePermission resourcePermission = new com.microsoft.graph.beta.models.tenantgovernanceservices.ResourcePermission();
resourcePermission.setId("633e0fce-8c58-4cfb-9495-12bbd5a24f7c");
resourcePermission.setName("Policy.Read.ConditionalAccess");
resourcePermission.setType(com.microsoft.graph.beta.models.tenantgovernanceservices.PermissionType.Scope);
permissions.add(resourcePermission);
com.microsoft.graph.beta.models.tenantgovernanceservices.ResourcePermission resourcePermission1 = new com.microsoft.graph.beta.models.tenantgovernanceservices.ResourcePermission();
resourcePermission1.setId("e1fe6dd8-ba31-4d61-89e7-88639da4683d");
resourcePermission1.setName("User.Read");
resourcePermission1.setType(com.microsoft.graph.beta.models.tenantgovernanceservices.PermissionType.Scope);
permissions.add(resourcePermission1);
requiredResourceAccess.setPermissions(permissions);
requiredResourceAccesses.add(requiredResourceAccess);
multiTenantApplicationsToProvision1.setRequiredResourceAccesses(requiredResourceAccesses);
multiTenantApplicationsToProvision.add(multiTenantApplicationsToProvision1);
governancePolicyTemplate.setMultiTenantApplicationsToProvision(multiTenantApplicationsToProvision);
LinkedList<com.microsoft.graph.beta.models.tenantgovernanceservices.DelegatedAdministrationRoleAssignment> delegatedAdministrationRoleAssignments = new LinkedList<com.microsoft.graph.beta.models.tenantgovernanceservices.DelegatedAdministrationRoleAssignment>();
com.microsoft.graph.beta.models.tenantgovernanceservices.DelegatedAdministrationRoleAssignment delegatedAdministrationRoleAssignment = new com.microsoft.graph.beta.models.tenantgovernanceservices.DelegatedAdministrationRoleAssignment();
LinkedList<com.microsoft.graph.beta.models.tenantgovernanceservices.RoleTemplate> roleTemplates = new LinkedList<com.microsoft.graph.beta.models.tenantgovernanceservices.RoleTemplate>();
com.microsoft.graph.beta.models.tenantgovernanceservices.RoleTemplate roleTemplate = new com.microsoft.graph.beta.models.tenantgovernanceservices.RoleTemplate();
roleTemplate.setId("f2ef992c-3afb-46b9-b7cf-a126ee74c451");
roleTemplate.setName("Global Reader");
roleTemplates.add(roleTemplate);
delegatedAdministrationRoleAssignment.setRoleTemplates(roleTemplates);
Group group = new Group();
group.setId("ffffffff-5555-6666-7777-aaaaaaaaaaaa");
delegatedAdministrationRoleAssignment.setGroup(group);
delegatedAdministrationRoleAssignments.add(delegatedAdministrationRoleAssignment);
governancePolicyTemplate.setDelegatedAdministrationRoleAssignments(delegatedAdministrationRoleAssignments);
com.microsoft.graph.models.tenantgovernanceservices.GovernancePolicyTemplate result = graphClient.directory().tenantGovernance().governancePolicyTemplates().post(governancePolicyTemplate);


```