---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelstenantgovernanceservices "github.com/microsoftgraph/msgraph-beta-sdk-go/models/tenantgovernanceservices"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodelstenantgovernanceservices.NewGovernancePolicyTemplate()


multiTenantApplicationsToProvision := graphmodelstenantgovernanceservices.NewMultiTenantApplicationsToProvision()
appId := "66667777-aaaa-8888-bbbb-9999cccc0000"
multiTenantApplicationsToProvision.SetAppId(&appId) 
objectId := "cccccccc-2222-3333-4444-dddddddddddd"
multiTenantApplicationsToProvision.SetObjectId(&objectId) 
displayName := "Mega Monitor"
multiTenantApplicationsToProvision.SetDisplayName(&displayName) 


requiredResourceAccess := graphmodelstenantgovernanceservices.NewRequiredResourceAccess()
resourceAppId := "00000003-0000-0000-c000-000000000000"
requiredResourceAccess.SetResourceAppId(&resourceAppId) 


resourcePermission := graphmodelstenantgovernanceservices.NewResourcePermission()
id := "633e0fce-8c58-4cfb-9495-12bbd5a24f7c"
resourcePermission.SetId(&id) 
name := "Policy.Read.ConditionalAccess"
resourcePermission.SetName(&name) 
type := graphmodels.SCOPE_PERMISSIONTYPE 
resourcePermission.SetType(&type) 
resourcePermission1 := graphmodelstenantgovernanceservices.NewResourcePermission()
id := "e1fe6dd8-ba31-4d61-89e7-88639da4683d"
resourcePermission1.SetId(&id) 
name := "User.Read"
resourcePermission1.SetName(&name) 
type := graphmodels.SCOPE_PERMISSIONTYPE 
resourcePermission1.SetType(&type) 

permissions := []graphmodelstenantgovernanceservices.ResourcePermissionable {
	resourcePermission,
	resourcePermission1,
}
requiredResourceAccess.SetPermissions(permissions)

requiredResourceAccesses := []graphmodelstenantgovernanceservices.RequiredResourceAccessable {
	requiredResourceAccess,
}
multiTenantApplicationsToProvision.SetRequiredResourceAccesses(requiredResourceAccesses)

multiTenantApplicationsToProvision := []graphmodelstenantgovernanceservices.MultiTenantApplicationsToProvisionable {
	multiTenantApplicationsToProvision,
}
requestBody.SetMultiTenantApplicationsToProvision(multiTenantApplicationsToProvision)


delegatedAdministrationRoleAssignment := graphmodelstenantgovernanceservices.NewDelegatedAdministrationRoleAssignment()


roleTemplate := graphmodelstenantgovernanceservices.NewRoleTemplate()
id := "f2ef992c-3afb-46b9-b7cf-a126ee74c451"
roleTemplate.SetId(&id) 
name := "Global Reader"
roleTemplate.SetName(&name) 

roleTemplates := []graphmodelstenantgovernanceservices.RoleTemplateable {
	roleTemplate,
}
delegatedAdministrationRoleAssignment.SetRoleTemplates(roleTemplates)
group := graphmodels.NewGroup()
id := "ffffffff-5555-6666-7777-aaaaaaaaaaaa"
group.SetId(&id) 
delegatedAdministrationRoleAssignment.SetGroup(group)

delegatedAdministrationRoleAssignments := []graphmodelstenantgovernanceservices.DelegatedAdministrationRoleAssignmentable {
	delegatedAdministrationRoleAssignment,
}
requestBody.SetDelegatedAdministrationRoleAssignments(delegatedAdministrationRoleAssignments)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
governancePolicyTemplates, err := graphClient.Directory().TenantGovernance().GovernancePolicyTemplates().ByGovernancePolicyTemplateId("governancePolicyTemplate-id").Patch(context.Background(), requestBody, nil)


```