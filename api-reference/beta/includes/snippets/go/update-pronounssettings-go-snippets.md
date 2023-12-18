---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPronounsSettings()
isEnabledInOrganization := true
requestBody.SetIsEnabledInOrganization(&isEnabledInOrganization) 

pronouns, err := graphClient.Admin().People().Pronouns().Patch(context.Background(), requestBody, nil)


```