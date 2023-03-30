---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCrossTenantAccessPolicyConfigurationPartner()
tenantId := "3d0f5dec-5d3d-455c-8016-e2af1ae4d31a"
requestBody.SetTenantId(&tenantId) 
b2bDirectConnectOutbound := graphmodels.NewCrossTenantAccessPolicyB2BSetting()
usersAndGroups := graphmodels.NewCrossTenantAccessPolicyTargetConfiguration()
accessType := graphmodels.BLOCKED_CROSSTENANTACCESSPOLICYTARGETCONFIGURATIONACCESSTYPE 
usersAndGroups.SetAccessType(&accessType) 


crossTenantAccessPolicyTarget := graphmodels.NewCrossTenantAccessPolicyTarget()
target := "6f546279-4da5-4b53-a095-09ea0cef9971"
crossTenantAccessPolicyTarget.SetTarget(&target) 
targetType := graphmodels.GROUP_CROSSTENANTACCESSPOLICYTARGETTYPE 
crossTenantAccessPolicyTarget.SetTargetType(&targetType) 

targets := []graphmodels.CrossTenantAccessPolicyTargetable {
	crossTenantAccessPolicyTarget,

}
usersAndGroups.SetTargets(targets)
b2bDirectConnectOutbound.SetUsersAndGroups(usersAndGroups)
requestBody.SetB2bDirectConnectOutbound(b2bDirectConnectOutbound)
b2bDirectConnectInbound := graphmodels.NewCrossTenantAccessPolicyB2BSetting()
applications := graphmodels.NewCrossTenantAccessPolicyTargetConfiguration()
accessType := graphmodels.ALLOWED_CROSSTENANTACCESSPOLICYTARGETCONFIGURATIONACCESSTYPE 
applications.SetAccessType(&accessType) 


crossTenantAccessPolicyTarget := graphmodels.NewCrossTenantAccessPolicyTarget()
target := "Office365"
crossTenantAccessPolicyTarget.SetTarget(&target) 
targetType := graphmodels.APPLICATION_CROSSTENANTACCESSPOLICYTARGETTYPE 
crossTenantAccessPolicyTarget.SetTargetType(&targetType) 

targets := []graphmodels.CrossTenantAccessPolicyTargetable {
	crossTenantAccessPolicyTarget,

}
applications.SetTargets(targets)
b2bDirectConnectInbound.SetApplications(applications)
requestBody.SetB2bDirectConnectInbound(b2bDirectConnectInbound)

result, err := graphClient.Policies().CrossTenantAccessPolicy().Partners().Post(context.Background(), requestBody, nil)


```