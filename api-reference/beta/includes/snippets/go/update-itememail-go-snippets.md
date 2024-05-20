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

requestBody := graphmodels.NewItemEmail()
displayName := "Business Email"
requestBody.SetDisplayName(&displayName) 
type := graphmodels.WORK_EMAILTYPE 
requestBody.SetType(&type) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
emails, err := graphClient.Users().ByUserId("user-id").Profile().Emails().ByItemEmailId("itemEmail-id").Patch(context.Background(), requestBody, nil)


```