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

requestBody := graphmodelsexternalconnectors.NewExternalGroup()
id := "31bea3d537902000"
requestBody.SetId(&id) 
displayName := "Contoso Marketing"
requestBody.SetDisplayName(&displayName) 
description := "The product marketing team"
requestBody.SetDescription(&description) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
groups, err := graphClient.External().Connections().ByExternalConnectionId("externalConnection-id").Groups().Post(context.Background(), requestBody, nil)


```