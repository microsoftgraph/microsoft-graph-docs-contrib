---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewVirtualEventPresenter()
identity := graphmodels.NewCommunicationsUserIdentity()
id := "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b"
identity.SetId(&id) 
requestBody.SetIdentity(identity)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
presenters, err := graphClient.Solutions().VirtualEvents().Webinars().ByVirtualEventWebinarId("virtualEventWebinar-id").Presenters().Post(context.Background(), requestBody, nil)


```