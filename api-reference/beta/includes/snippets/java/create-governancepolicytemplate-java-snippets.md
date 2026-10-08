---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TenantGovernancePolicyTemplate tenantGovernancePolicyTemplate = new TenantGovernancePolicyTemplate();
tenantGovernancePolicyTemplate.setDisplayName("Monitor Entra resource configurations");
tenantGovernancePolicyTemplate.setDescription("Grants Global reader and provisions a custom multi-tenant application to monitor conditional access policies");
LinkedList<MultiTenantApplicationsToProvision> multiTenantApplicationsToProvision = new LinkedList<MultiTenantApplicationsToProvision>();
MultiTenantApplicationsToProvision multiTenantApplicationsToProvision1 = new MultiTenantApplicationsToProvision();
multiTenantApplicationsToProvision1.setAppId("66667777-aaaa-8888-bbbb-9999cccc0000");
multiTenantApplicationsToProvision1.setObjectId("cccccccc-2222-3333-4444-dddddddddddd");
multiTenantApplicationsToProvision1.setDisplayName("Mega Monitor");
LinkedList<ApplicationsRequiredResourceAccess> requiredResourceAccesses = new LinkedList<ApplicationsRequiredResourceAccess>();
ApplicationsRequiredResourceAccess applicationsRequiredResourceAccess = new ApplicationsRequiredResourceAccess();
applicationsRequiredResourceAccess.setResourceAppId("00000003-0000-0000-c000-000000000000");
LinkedList<ApplicationResourcePermission> permissions = new LinkedList<ApplicationResourcePermission>();
ApplicationResourcePermission applicationResourcePermission = new ApplicationResourcePermission();
applicationResourcePermission.setId("633e0fce-8c58-4cfb-9495-12bbd5a24f7c");
applicationResourcePermission.setName("Policy.Read.ConditionalAccess");
applicationResourcePermission.setType(ApplicationPermissionType.Scope);
permissions.add(applicationResourcePermission);
ApplicationResourcePermission applicationResourcePermission1 = new ApplicationResourcePermission();
applicationResourcePermission1.setId("e1fe6dd8-ba31-4d61-89e7-88639da4683d");
applicationResourcePermission1.setName("User.Read");
applicationResourcePermission1.setType(ApplicationPermissionType.Scope);
permissions.add(applicationResourcePermission1);
applicationsRequiredResourceAccess.setPermissions(permissions);
requiredResourceAccesses.add(applicationsRequiredResourceAccess);
multiTenantApplicationsToProvision1.setRequiredResourceAccesses(requiredResourceAccesses);
multiTenantApplicationsToProvision.add(multiTenantApplicationsToProvision1);
tenantGovernancePolicyTemplate.setMultiTenantApplicationsToProvision(multiTenantApplicationsToProvision);
LinkedList<DelegatedAdministrationRoleAssignment> delegatedAdministrationRoleAssignments = new LinkedList<DelegatedAdministrationRoleAssignment>();
DelegatedAdministrationRoleAssignment delegatedAdministrationRoleAssignment = new DelegatedAdministrationRoleAssignment();
LinkedList<RoleTemplate> roleTemplates = new LinkedList<RoleTemplate>();
RoleTemplate roleTemplate = new RoleTemplate();
roleTemplate.setId("f2ef992c-3afb-46b9-b7cf-a126ee74c451");
roleTemplate.setName("Global Reader");
roleTemplates.add(roleTemplate);
delegatedAdministrationRoleAssignment.setRoleTemplates(roleTemplates);
Group group = new Group();
group.setId("ffffffff-5555-6666-7777-aaaaaaaaaaaa");
delegatedAdministrationRoleAssignment.setGroup(group);
delegatedAdministrationRoleAssignments.add(delegatedAdministrationRoleAssignment);
tenantGovernancePolicyTemplate.setDelegatedAdministrationRoleAssignments(delegatedAdministrationRoleAssignments);
TenantGovernancePolicyTemplate result = graphClient.directory().tenantGovernance().governancePolicyTemplates().post(tenantGovernancePolicyTemplate);


```