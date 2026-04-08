---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

requestBody := graphmodelssecurity.NewEnvironment()
kind := graphmodels.AZURESUBSCRIPTION_ENVIRONMENTKIND 
requestBody.SetKind(&kind) 
id := "/subscriptions/d34fd44c-ebfa-4a9c-bceb-9eeafe72ac15"
requestBody.SetId(&id) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
environments, err := graphClient.Security().Zones().ByZoneId("zone-id").Environments().Post(context.Background(), requestBody, nil)


```