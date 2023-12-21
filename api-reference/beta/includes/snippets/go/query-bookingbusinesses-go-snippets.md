---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphbookingbusinesses "github.com/microsoftgraph/msgraph-beta-sdk-go/bookingbusinesses"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestQuery := "Adventure"

requestParameters := &graphbookingbusinesses.BookingBusinessesRequestBuilderGetQueryParameters{
	Query: &requestQuery,
}
configuration := &graphbookingbusinesses.BookingBusinessesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

bookingBusinesses, err := graphClient.BookingBusinesses().Get(context.Background(), configuration)


```