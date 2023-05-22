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


requestBody := graphmodels.NewAuthenticationStrengthPolicy()
displayName := "FIDO2 only"
requestBody.SetDisplayName(&displayName) 
description := "An auth strength allowing only FIDO2 security keys."
requestBody.SetDescription(&description) 

result, err := graphClient.Policies().AuthenticationStrengthPolicies().ByAuthenticationStrengthPolicieId("authenticationStrengthPolicy-id").Patch(context.Background(), requestBody, nil)


```