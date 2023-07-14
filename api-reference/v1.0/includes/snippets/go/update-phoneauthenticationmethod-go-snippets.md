---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPhoneAuthenticationMethod()
phoneNumber := "+1 2065555554"
requestBody.SetPhoneNumber(&phoneNumber) 
phoneType := graphmodels.MOBILE_AUTHENTICATIONPHONETYPE 
requestBody.SetPhoneType(&phoneType) 

result, err := graphClient.Users().ByUserId("user-id").Authentication().PhoneMethods().ByPhoneMethodId("phoneAuthenticationMethod-id").Patch(context.Background(), requestBody, nil)


```