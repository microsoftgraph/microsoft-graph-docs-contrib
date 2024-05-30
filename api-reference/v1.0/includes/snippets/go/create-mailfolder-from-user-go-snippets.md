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

requestBody := graphmodels.NewMailFolder()
displayName := "Clutter"
requestBody.SetDisplayName(&displayName) 
isHidden := true
requestBody.SetIsHidden(&isHidden) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
mailFolders, err := graphClient.Me().MailFolders().Post(context.Background(), requestBody, nil)


```