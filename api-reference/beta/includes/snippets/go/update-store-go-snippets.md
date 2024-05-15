---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelstermstore "github.com/microsoftgraph/msgraph-beta-sdk-go/models/termstore"
	  //other-imports
)

requestBody := graphmodelstermstore.NewStore()
defaultLanguageTag := "en-US"
requestBody.SetDefaultLanguageTag(&defaultLanguageTag) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
termStore, err := graphClient.TermStore().Patch(context.Background(), requestBody, nil)


```