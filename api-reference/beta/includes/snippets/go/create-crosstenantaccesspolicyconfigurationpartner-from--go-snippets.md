---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCrossTenantAccessPolicyConfigurationPartner()
tenantId := "3d0f5dec-5d3d-455c-8016-e2af1ae4d31a"
requestBody.SetTenantId(&tenantId)
b2bDirectConnectOutbound := msgraphsdk.NewCrossTenantAccessPolicyB2BSetting()
requestBody.SetB2bDirectConnectOutbound(b2bDirectConnectOutbound)
usersAndGroups := msgraphsdk.NewCrossTenantAccessPolicyTargetConfiguration()
b2bDirectConnectOutbound.SetUsersAndGroups(usersAndGroups)
accessType := "blocked"
usersAndGroups.SetAccessType(&accessType)
usersAndGroups.SetTargets( []CrossTenantAccessPolicyTarget {
	msgraphsdk.NewCrossTenantAccessPolicyTarget(),
target := "6f546279-4da5-4b53-a095-09ea0cef9971"
	SetTarget(&target)
targetType := "group"
	SetTargetType(&targetType)
}
b2bDirectConnectInbound := msgraphsdk.NewCrossTenantAccessPolicyB2BSetting()
requestBody.SetB2bDirectConnectInbound(b2bDirectConnectInbound)
applications := msgraphsdk.NewCrossTenantAccessPolicyTargetConfiguration()
b2bDirectConnectInbound.SetApplications(applications)
accessType := "allowed"
applications.SetAccessType(&accessType)
applications.SetTargets( []CrossTenantAccessPolicyTarget {
	msgraphsdk.NewCrossTenantAccessPolicyTarget(),
target := "Office365"
	SetTarget(&target)
targetType := "application"
	SetTargetType(&targetType)
}
result, err := graphClient.Policies().CrossTenantAccessPolicy().Partners().Post(requestBody)


```