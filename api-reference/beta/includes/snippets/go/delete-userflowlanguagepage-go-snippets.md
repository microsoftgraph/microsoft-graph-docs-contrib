---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.Identity().B2xUserFlowsById("b2xIdentityUserFlow-id").LanguagesById("userFlowLanguageConfiguration-id").OverridesPagesById("userFlowLanguagePage-id").Value().Delete(context.Background(), nil)


```