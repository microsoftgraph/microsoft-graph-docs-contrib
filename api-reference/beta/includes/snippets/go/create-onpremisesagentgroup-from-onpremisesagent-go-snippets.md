---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").AgentsById("onPremisesAgent-id").AgentGroups().$ref().Post(context.Background(), nil)


```