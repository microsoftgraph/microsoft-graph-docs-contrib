---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

languageProficiencyId := "languageProficiency-id"
graphClient.Me().Profile().LanguagesById(&languageProficiencyId).Delete(options)


```