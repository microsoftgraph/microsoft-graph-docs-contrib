---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestSkiptoken := "pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjtQ5LOhVoS7qQG_wdVCHHlbQpga7"

requestParameters := &graphusers.UsersDelta()RequestBuilderGetQueryParameters{
	Skiptoken: &requestSkiptoken,
}
configuration := &graphusers.UsersDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().Delta().Get(context.Background(), configuration)


```