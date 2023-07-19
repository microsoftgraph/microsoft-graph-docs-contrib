---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphsecurity.SecurityIncidentsRequestBuilderGetQueryParameters{
	Expand: [] string {"alerts"},
}
configuration := &graphsecurity.SecurityIncidentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Security().Incidents().Get(context.Background(), configuration)


```