---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/solutions"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestQuery := "Adventure"

requestParameters := &graphconfig.SolutionsBookingBusinessesRequestBuilderGetQueryParameters{
	Query: &requestQuery,
}
configuration := &graphconfig.SolutionsBookingBusinessesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Solutions().BookingBusinesses().Get(context.Background(), configuration)


```