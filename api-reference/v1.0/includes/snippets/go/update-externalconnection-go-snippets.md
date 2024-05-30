---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelsexternalconnectors "github.com/microsoftgraph/msgraph-sdk-go/models/externalconnectors"
	  //other-imports
)

requestBody := graphmodelsexternalconnectors.NewExternalConnection()
name := "Contoso HR Service Tickets"
requestBody.SetName(&name) 
description := "Connection to index HR service tickets"
requestBody.SetDescription(&description) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
connections, err := graphClient.External().Connections().ByExternalConnectionId("externalConnection-id").Patch(context.Background(), requestBody, nil)


```