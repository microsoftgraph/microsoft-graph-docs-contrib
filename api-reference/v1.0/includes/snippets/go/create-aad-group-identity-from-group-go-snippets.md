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

requestBody := graphmodelsexternalconnectors.NewIdentity()
id := "e5477431-1038-484e-bf69-1dfedb97a110"
requestBody.SetId(&id) 
type := graphmodels.GROUP_IDENTITYTYPE 
requestBody.SetType(&type) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
members, err := graphClient.External().Connections().ByExternalConnectionId("externalConnection-id").Groups().ByExternalGroupId("externalGroup-id").Members().Post(context.Background(), requestBody, nil)


```