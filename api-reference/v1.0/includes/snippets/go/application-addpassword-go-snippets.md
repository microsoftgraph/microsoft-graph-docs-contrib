---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphapplications "github.com/microsoftgraph/msgraph-sdk-go/applications"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphapplications.NewAddPasswordPostRequestBody()
passwordCredential := graphmodels.NewPasswordCredential()
displayName := "Password friendly name"
passwordCredential.SetDisplayName(&displayName) 
requestBody.SetPasswordCredential(passwordCredential)

addPassword, err := graphClient.Applications().ByApplicationId("application-id").AddPassword().Post(context.Background(), requestBody, nil)


```