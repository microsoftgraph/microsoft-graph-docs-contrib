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
businessPhones := []string {
	"+1 425 555 0109",
}
requestBody.SetBusinessPhones(businessPhones)
officeLocation := "18/2111"
requestBody.SetOfficeLocation(&officeLocation) 

users, err := graphClient.Users().ByUserId("user-id").Patch(context.Background(), requestBody, nil)


```