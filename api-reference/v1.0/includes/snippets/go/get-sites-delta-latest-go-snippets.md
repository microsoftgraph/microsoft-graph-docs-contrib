---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsites "github.com/microsoftgraph/msgraph-sdk-go/sites"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestToken := "latest"

requestParameters := &graphsites.SitesDelta()RequestBuilderGetQueryParameters{
	Token: &requestToken,
}
configuration := &graphsites.SitesDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

delta, err := graphClient.Sites().Delta().GetAsDeltaGetResponse(context.Background(), configuration)


```