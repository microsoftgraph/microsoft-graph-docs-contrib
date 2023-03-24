---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").AgentsById("onPremisesAgent-id").AgentGroups().Ref().Post(context.Background(), nil)


```