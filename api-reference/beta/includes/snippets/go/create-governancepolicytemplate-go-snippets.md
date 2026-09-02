---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewTenantGovernancePolicyTemplate()
displayName := "Monitor Entra resource configurations"
requestBody.SetDisplayName(&displayName) 
description := "Grants Global reader and provisions a custom multi-tenant application to monitor conditional access policies"
requestBody.SetDescription(&description) 


multiTenantApplicationsToProvision := graphmodels.NewMultiTenantApplicationsToProvision()
appId := "66667777-aaaa-8888-bbbb-9999cccc0000"
multiTenantApplicationsToProvision.SetAppId(&appId) 
objectId := "cccccccc-2222-3333-4444-dddddddddddd"
multiTenantApplicationsToProvision.SetObjectId(&objectId) 
displayName := "Mega Monitor"
multiTenantApplicationsToProvision.SetDisplayName(&displayName) 


applicationsRequiredResourceAccess := graphmodels.NewApplicationsRequiredResourceAccess()
resourceAppId := "00000003-0000-0000-c000-000000000000"
applicationsRequiredResourceAccess.SetResourceAppId(&resourceAppId) 


applicationResourcePermission := graphmodels.NewApplicationResourcePermission()
id := "633e0fce-8c58-4cfb-9495-12bbd5a24f7c"
applicationResourcePermission.SetId(&id) 
name := "Policy.Read.ConditionalAccess"
applicationResourcePermission.SetName(&name) 
type := graphmodels.SCOPE_APPLICATIONPERMISSIONTYPE 
applicationResourcePermission.SetType(&type) 
applicationResourcePermission1 := graphmodels.NewApplicationResourcePermission()
id := "e1fe6dd8-ba31-4d61-89e7-88639da4683d"
applicationResourcePermission1.SetId(&id) 
name := "User.Read"
applicationResourcePermission1.SetName(&name) 
type := graphmodels.SCOPE_APPLICATIONPERMISSIONTYPE 
applicationResourcePermission1.SetType(&type) 

permissions := []graphmodels.ApplicationResourcePermissionable {
	applicationResourcePermission,
	applicationResourcePermission1,
}
applicationsRequiredResourceAccess.SetPermissions(permissions)

requiredResourceAccesses := []graphmodels.ApplicationsRequiredResourceAccessable {
	applicationsRequiredResourceAccess,
}
multiTenantApplicationsToProvision.SetRequiredResourceAccesses(requiredResourceAccesses)

multiTenantApplicationsToProvision := []graphmodels.MultiTenantApplicationsToProvisionable {
	multiTenantApplicationsToProvision,
}
requestBody.SetMultiTenantApplicationsToProvision(multiTenantApplicationsToProvision)


delegatedAdministrationRoleAssignment := graphmodels.NewDelegatedAdministrationRoleAssignment()


roleTemplate := graphmodels.NewRoleTemplate()
id := "f2ef992c-3afb-46b9-b7cf-a126ee74c451"
roleTemplate.SetId(&id) 
name := "Global Reader"
roleTemplate.SetName(&name) 

roleTemplates := []graphmodels.RoleTemplateable {
	roleTemplate,
}
delegatedAdministrationRoleAssignment.SetRoleTemplates(roleTemplates)
group := graphmodels.NewGroup()
id := "ffffffff-5555-6666-7777-aaaaaaaaaaaa"
group.SetId(&id) 
delegatedAdministrationRoleAssignment.SetGroup(group)

delegatedAdministrationRoleAssignments := []graphmodels.DelegatedAdministrationRoleAssignmentable {
	delegatedAdministrationRoleAssignment,
}
requestBody.SetDelegatedAdministrationRoleAssignments(delegatedAdministrationRoleAssignments)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
governancePolicyTemplates, err := graphClient.Directory().TenantGovernance().GovernancePolicyTemplates().Post(context.Background(), requestBody, nil)


```