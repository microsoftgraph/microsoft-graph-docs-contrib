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


requestBody := graphmodels.NewItemPatent()
description := "Calculating the intent of a user to purchase an item based on the amount of time they hover their mouse over a given pixel."
requestBody.SetDescription(&description) 
displayName := "Inferring User Intent through browsing behaviors"
requestBody.SetDisplayName(&displayName) 
isPending := true
requestBody.SetIsPending(&isPending) 
number := "USPTO-3954432633"
requestBody.SetNumber(&number) 
webUrl := "https://patents.gov/3954432633"
requestBody.SetWebUrl(&webUrl) 

result, err := graphClient.Me().Profile().Patents().Post(context.Background(), requestBody, nil)


```