---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewAuthoredNote()
content := graphmodels.NewItemBody()
content := "Please take a look at the files tagged with follow up"
content.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
content.SetContentType(&contentType) 
requestBody.SetContent(content)

result, err := graphClient.Privacy().SubjectRightsRequestsById("subjectRightsRequest-id").Notes().Post(context.Background(), requestBody, nil)


```