---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewMailFolder()
additionalData := map[string]interface{}{
	"filterQuery" : "contains(subject, 'Analytics')", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Me().MailFoldersById("mailFolder-id").Patch(context.Background(), requestBody, nil)


```