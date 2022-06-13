---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"value":  []Object {
	}
}
userId := "user-id"
siteId := "site-id"
graphClient.UsersById(&userId).FollowedSitesById(&siteId).Post(requestBody)


```