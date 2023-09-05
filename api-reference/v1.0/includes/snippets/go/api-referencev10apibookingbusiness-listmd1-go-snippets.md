---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsolutions "github.com/microsoftgraph/msgraph-sdk-go/solutions"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestQuery := "Adventure"

requestParameters := &graphsolutions.SolutionsBookingBusinessesRequestBuilderGetQueryParameters{
	Query: &requestQuery,
}
configuration := &graphsolutions.SolutionsBookingBusinessesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

bookingBusinesses, err := graphClient.Solutions().BookingBusinesses().Get(context.Background(), configuration)


```