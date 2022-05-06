---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.id": "https://graph.microsoft.com/odata/groups('1a9db3ab-0acf-4808-99ae-e8ed581cb2e0')",
}
options := &msgraphsdk.GroupRequestBuilderPostOptions{
	Body: requestBody,
}
mobilityManagementPolicyId := "mobilityManagementPolicy-id"
groupId := "group-id"
graphClient.Policies().MobileAppManagementPoliciesById(&mobilityManagementPolicyId).IncludedGroupsById(&groupId).Post(options)


```