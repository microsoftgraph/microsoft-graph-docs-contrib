---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAuthenticationContextClassReference()
id := "c1"
requestBody.SetId(&id) 
displayName := "Contoso medium"
requestBody.SetDisplayName(&displayName) 
description := "Medium protection level defined for Contoso policy"
requestBody.SetDescription(&description) 
isAvailable := true
requestBody.SetIsAvailable(&isAvailable) 

result, err := graphClient.Identity().ConditionalAccess().AuthenticationContextClassReferences().ByAuthenticationContextClassReferenceId("authenticationContextClassReference-id").Patch(context.Background(), requestBody, nil)


```