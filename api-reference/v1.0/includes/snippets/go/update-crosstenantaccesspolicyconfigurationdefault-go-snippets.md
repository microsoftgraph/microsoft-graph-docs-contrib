---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
default, err := graphClient.Policies().CrossTenantAccessPolicy().Default().Patch(context.Background(), requestBody, nil)


```