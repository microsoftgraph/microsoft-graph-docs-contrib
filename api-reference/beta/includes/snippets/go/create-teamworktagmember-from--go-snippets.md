---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTeamworkTagMember()
userId := "97f62344-57dc-409c-88ad-c4af14158ff5"
requestBody.SetUserId(&userId) 

result, err := graphClient.TeamsById("team-id").TagsById("teamworkTag-id").Members().Post(requestBody)


```