---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/onpremisespublishingprofiles"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.OnPremisesPublishingProfileItemPublishedResourceItemRequestBuilderGetQueryParameters{
	Expand: [] string {"agentGroups"},
}
configuration := &graphconfig.OnPremisesPublishingProfileItemPublishedResourceItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").PublishedResourcesById("publishedResource-id").Get(context.Background(), configuration)


```