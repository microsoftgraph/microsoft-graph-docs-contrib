---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsites "github.com/microsoftgraph/msgraph-beta-sdk-go/sites"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestToken := "1230919asd190410jlka"

requestParameters := &graphsites.SitesDelta()RequestBuilderGetQueryParameters{
	Token: &requestToken,
}
configuration := &graphsites.SitesDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

delta, err := graphClient.Sites().Delta().GetAsDeltaGetResponse(context.Background(), configuration)


```