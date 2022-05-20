---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewLanguageProficiency()
allowedAudiences := "organization"
requestBody.SetAllowedAudiences(&allowedAudiences)
languageProficiencyId := "languageProficiency-id"
graphClient.Me().Profile().LanguagesById(&languageProficiencyId).Patch(requestBody)


```