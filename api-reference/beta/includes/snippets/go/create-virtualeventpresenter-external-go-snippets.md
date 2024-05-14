---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewVirtualEventPresenter()
identity := graphmodels.NewCommunicationsGuestIdentity()
displayName := "Guest Speaker"
identity.SetDisplayName(&displayName) 
email := "guest.speaker@fabrikam.com"
identity.SetEmail(&email) 
requestBody.SetIdentity(identity)

presenters, err := graphClient.Solutions().VirtualEvents().Townhalls().ByVirtualEventTownhallId("virtualEventTownhall-id").Presenters().Post(context.Background(), requestBody, nil)


```