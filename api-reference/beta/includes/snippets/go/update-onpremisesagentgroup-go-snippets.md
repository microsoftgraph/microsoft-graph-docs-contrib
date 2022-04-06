---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewOnPremisesAgentGroup()
displayName := "Group New Name"
requestBody.SetDisplayName(&displayName)
options := &msgraphsdk.OnPremisesAgentGroupRequestBuilderPatchOptions{
	Body: requestBody,
}
onPremisesPublishingProfileId := "onPremisesPublishingProfile-id"
onPremisesAgentGroupId := "onPremisesAgentGroup-id"
graphClient.OnPremisesPublishingProfilesById(&onPremisesPublishingProfileId).AgentGroupsById(&onPremisesAgentGroupId).Patch(options)


```