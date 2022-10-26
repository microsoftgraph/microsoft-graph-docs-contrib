---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.Identity().B2xUserFlowsById("b2xIdentityUserFlow-id").LanguagesById("userFlowLanguageConfiguration-id").DefaultPagesById("userFlowLanguagePage-id").$value().Get(context.Background(), nil)


```