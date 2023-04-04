---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/bookingbusinesses"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestQuery := "Adventure"

requestParameters := &graphconfig.BookingBusinessesRequestBuilderGetQueryParameters{
	Query: &requestQuery,
}
configuration := &graphconfig.BookingBusinessesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.BookingBusinesses().Get(context.Background(), configuration)


```