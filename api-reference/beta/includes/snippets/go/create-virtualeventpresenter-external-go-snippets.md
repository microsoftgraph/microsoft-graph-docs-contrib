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

requestBody := graphmodels.NewVirtualEventPresenter()
identity := graphmodels.NewCommunicationsGuestIdentity()
displayName := "Guest Speaker"
identity.SetDisplayName(&displayName) 
email := "guest.speaker@fabrikam.com"
identity.SetEmail(&email) 
requestBody.SetIdentity(identity)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
presenters, err := graphClient.Solutions().VirtualEvents().Townhalls().ByVirtualEventTownhallId("virtualEventTownhall-id").Presenters().Post(context.Background(), requestBody, nil)


```