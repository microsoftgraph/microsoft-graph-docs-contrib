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


requestBody := graphmodels.NewItemAddress()
allowedAudiences := graphmodels.ME_ALLOWEDAUDIENCES 
requestBody.SetAllowedAudiences(&allowedAudiences) 
displayName := "Secret Hideout"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Users().ByUserId("user-id").Profile().Addresses().ByAddresseId("itemAddress-id").Patch(context.Background(), requestBody, nil)


```