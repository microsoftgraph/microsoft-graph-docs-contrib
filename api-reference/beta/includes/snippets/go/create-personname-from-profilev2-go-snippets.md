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

requestBody := graphmodels.NewPersonName()
displayName := "Innocenty Popov"
requestBody.SetDisplayName(&displayName) 
first := "Innocenty"
requestBody.SetFirst(&first) 
initials := "IP"
requestBody.SetInitials(&initials) 
last := "Popov"
requestBody.SetLast(&last) 
languageTag := "en-US"
requestBody.SetLanguageTag(&languageTag) 
maiden := null
requestBody.SetMaiden(&maiden) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
names, err := graphClient.Me().Profile().Names().Post(context.Background(), requestBody, nil)


```