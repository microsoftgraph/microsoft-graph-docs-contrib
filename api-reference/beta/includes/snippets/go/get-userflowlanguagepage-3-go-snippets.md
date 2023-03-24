---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.Identity().B2cUserFlowsById("b2cIdentityUserFlow-id").LanguagesById("userFlowLanguageConfiguration-id").DefaultPagesById("userFlowLanguagePage-id").Value().Get(context.Background(), nil)


```