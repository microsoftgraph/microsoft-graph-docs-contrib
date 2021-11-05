---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewTeamworkTag()
displayName := "Finance"
requestBody.SetDisplayName(&displayName)
requestBody.SetMembers( []TeamworkTagMember {
	msgraphsdk.NewTeamworkTagMember(),
	SetAdditionalData(map[string]interface{}{
		"userId": "92f6952f-61ca-4a94-8910-508a240bc167",
	}
	msgraphsdk.NewTeamworkTagMember(),
	SetAdditionalData(map[string]interface{}{
		"userId": "085d800c-b86b-4bfc-a857-9371ad1caf29",
	}
}
options := &msgraphsdk.TagsRequestBuilderPostOptions{
	Body: requestBody,
}
teamId := "team-id"
result, err := graphClient.TeamsById(&teamId).Tags().Post(options);


```