---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewPhoneAuthenticationMethod()
phoneNumber := "+1 2065555555"
requestBody.SetPhoneNumber(&phoneNumber) 
phoneType := graphmodels.MOBILE_AUTHENTICATIONPHONETYPE 
requestBody.SetPhoneType(&phoneType) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
phoneMethods, err := graphClient.Users().ByUserId("user-id").Authentication().PhoneMethods().Post(context.Background(), requestBody, nil)


```