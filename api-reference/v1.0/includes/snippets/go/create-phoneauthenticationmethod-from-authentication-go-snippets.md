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
phoneNumber := "+1 2065555555"
requestBody.SetPhoneNumber(&phoneNumber) 
phoneType := graphmodels.MOBILE_AUTHENTICATIONPHONETYPE 
requestBody.SetPhoneType(&phoneType) 

phoneMethods, err := graphClient.Users().ByUserId("user-id").Authentication().PhoneMethods().Post(context.Background(), requestBody, nil)


```