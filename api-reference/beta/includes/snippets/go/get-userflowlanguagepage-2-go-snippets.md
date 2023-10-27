---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



overridesPages, err := graphClient.Identity().B2cUserFlows().ByB2cIdentityUserFlowId("b2cIdentityUserFlow-id").Languages().ByUserFlowLanguageConfigurationId("userFlowLanguageConfiguration-id").OverridesPages().Get(context.Background(), nil)


```