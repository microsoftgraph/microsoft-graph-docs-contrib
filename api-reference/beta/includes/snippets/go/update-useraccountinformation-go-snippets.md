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


requestBody := graphmodels.NewUserAccountInformation()
countryCode := "NO"
requestBody.SetCountryCode(&countryCode) 

result, err := graphClient.Me().Profile().Account().ByAccount().Id("userAccountInformation-id").Patch(context.Background(), requestBody, nil)


```