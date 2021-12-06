---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

applicationTemplateId := "applicationTemplate-id"
result, err := graphClient.ApplicationTemplatesById(&applicationTemplateId).Get(nil)


```