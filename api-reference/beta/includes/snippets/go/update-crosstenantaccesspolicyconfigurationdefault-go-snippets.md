---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCrossTenantAccessPolicyConfigurationDefault()
b2bCollaborationOutbound := graphmodels.NewCrossTenantAccessPolicyB2BSetting()
usersAndGroups := graphmodels.NewCrossTenantAccessPolicyTargetConfiguration()
accessType := graphmodels.BLOCKED_CROSSTENANTACCESSPOLICYTARGETCONFIGURATIONACCESSTYPE 
usersAndGroups.SetAccessType(&accessType) 


crossTenantAccessPolicyTarget := graphmodels.NewCrossTenantAccessPolicyTarget()
target := "0be493dc-cb56-4a53-936f-9cf64410b8b0"
crossTenantAccessPolicyTarget.SetTarget(&target) 
targetType := graphmodels.GROUP_CROSSTENANTACCESSPOLICYTARGETTYPE 
crossTenantAccessPolicyTarget.SetTargetType(&targetType) 

targets := []graphmodels.CrossTenantAccessPolicyTargetable {
	crossTenantAccessPolicyTarget,

}
usersAndGroups.SetTargets(targets)
b2bCollaborationOutbound.SetUsersAndGroups(usersAndGroups)
applications := graphmodels.NewCrossTenantAccessPolicyTargetConfiguration()
accessType := graphmodels.BLOCKED_CROSSTENANTACCESSPOLICYTARGETCONFIGURATIONACCESSTYPE 
applications.SetAccessType(&accessType) 


crossTenantAccessPolicyTarget := graphmodels.NewCrossTenantAccessPolicyTarget()
target := "AllApplications"
crossTenantAccessPolicyTarget.SetTarget(&target) 
targetType := graphmodels.APPLICATION_CROSSTENANTACCESSPOLICYTARGETTYPE 
crossTenantAccessPolicyTarget.SetTargetType(&targetType) 

targets := []graphmodels.CrossTenantAccessPolicyTargetable {
	crossTenantAccessPolicyTarget,

}
applications.SetTargets(targets)
b2bCollaborationOutbound.SetApplications(applications)
requestBody.SetB2bCollaborationOutbound(b2bCollaborationOutbound)

result, err := graphClient.Policies().CrossTenantAccessPolicy().Default().Patch(context.Background(), requestBody, nil)


```