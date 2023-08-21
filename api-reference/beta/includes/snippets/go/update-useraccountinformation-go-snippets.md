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

account, err := graphClient.Me().Profile().Account().ByUserAccountInformationId("userAccountInformation-id").Patch(context.Background(), requestBody, nil)


```