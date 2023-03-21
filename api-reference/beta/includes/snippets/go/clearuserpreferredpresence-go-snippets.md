---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewClearUserPreferredPresencePostRequestBody()

graphClient.UsersById("user-id").Presence().ClearUserPreferredPresence().Post(context.Background(), requestBody, nil)


```