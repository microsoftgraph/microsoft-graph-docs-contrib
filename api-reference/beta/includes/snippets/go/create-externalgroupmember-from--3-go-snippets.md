---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsexternalconnectors "github.com/microsoftgraph/msgraph-beta-sdk-go/models/externalconnectors"
	  //other-imports
)

requestBody := graphmodelsexternalconnectors.NewIdentity()
id := "1431b9c38ee647f6a"
requestBody.SetId(&id) 
type := graphmodels.EXTERNALGROUP_IDENTITYTYPE 
requestBody.SetType(&type) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
members, err := graphClient.External().Connections().ByExternalConnectionId("externalConnection-id").Groups().ByExternalGroupId("externalGroup-id").Members().Post(context.Background(), requestBody, nil)


```