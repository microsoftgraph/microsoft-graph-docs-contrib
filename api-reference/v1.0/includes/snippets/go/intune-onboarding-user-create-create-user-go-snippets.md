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


requestBody := graphmodels.NewUser()
deviceEnrollmentLimit := int32(5)
requestBody.SetDeviceEnrollmentLimit(&deviceEnrollmentLimit) 

result, err := graphClient.Users().Post(context.Background(), requestBody, nil)


```