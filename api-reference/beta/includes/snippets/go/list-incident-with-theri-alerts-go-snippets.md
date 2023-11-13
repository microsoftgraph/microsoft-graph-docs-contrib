---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphsecurity.SecurityIncidentsRequestBuilderGetQueryParameters{
	Expand: [] string {"alerts"},
}
configuration := &graphsecurity.SecurityIncidentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

incidents, err := graphClient.Security().Incidents().Get(context.Background(), configuration)


```