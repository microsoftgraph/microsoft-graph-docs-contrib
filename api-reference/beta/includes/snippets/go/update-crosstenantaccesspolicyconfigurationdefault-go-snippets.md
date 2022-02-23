---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCrossTenantAccessPolicyConfigurationDefault()
b2bCollaborationOutbound := msgraphsdk.NewCrossTenantAccessPolicyB2BSetting()
requestBody.SetB2bCollaborationOutbound(b2bCollaborationOutbound)
usersAndGroups := msgraphsdk.NewCrossTenantAccessPolicyTargetConfiguration()
b2bCollaborationOutbound.SetUsersAndGroups(usersAndGroups)
accessType := "blocked"
usersAndGroups.SetAccessType(&accessType)
usersAndGroups.SetTargets( []CrossTenantAccessPolicyTarget {
	msgraphsdk.NewCrossTenantAccessPolicyTarget(),
	SetAdditionalData(map[string]interface{}{
		"target": "0be493dc-cb56-4a53-936f-9cf64410b8b0",
		"targetType": "group",
	}
}
applications := msgraphsdk.NewCrossTenantAccessPolicyTargetConfiguration()
b2bCollaborationOutbound.SetApplications(applications)
accessType := "blocked"
applications.SetAccessType(&accessType)
applications.SetTargets( []CrossTenantAccessPolicyTarget {
	msgraphsdk.NewCrossTenantAccessPolicyTarget(),
	SetAdditionalData(map[string]interface{}{
		"target": "AllApplications",
		"targetType": "application",
	}
}
options := &msgraphsdk.DefaultRequestBuilderPatchOptions{
	Body: requestBody,
}
graphClient.Policies().CrossTenantAccessPolicy().Default().Patch(options)


```