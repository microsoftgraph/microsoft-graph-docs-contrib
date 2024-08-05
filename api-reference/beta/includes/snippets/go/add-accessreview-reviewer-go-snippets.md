---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAccessReviewReviewer()
id := "006111db-0810-4494-a6df-904d368bd81b"
requestBody.SetId(&id) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
reviewers, err := graphClient.AccessReviews().ByAccessReviewId("accessReview-id").Reviewers().Post(context.Background(), requestBody, nil)


```