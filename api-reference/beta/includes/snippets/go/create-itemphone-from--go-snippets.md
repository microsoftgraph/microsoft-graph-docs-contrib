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

requestBody := graphmodels.NewItemPhone()
displayName := "Car Phone"
requestBody.SetDisplayName(&displayName) 
number := "+7 499 342 22 13"
requestBody.SetNumber(&number) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
phones, err := graphClient.Me().Profile().Phones().Post(context.Background(), requestBody, nil)


```