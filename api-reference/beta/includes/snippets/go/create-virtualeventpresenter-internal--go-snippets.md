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
identity := graphmodels.NewCommunicationsUserIdentity()
id := "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b"
identity.SetId(&id) 
requestBody.SetIdentity(identity)

presenters, err := graphClient.Solutions().VirtualEvents().Townhalls().ByVirtualEventTownhallId("virtualEventTownhall-id").Presenters().Post(context.Background(), requestBody, nil)


```