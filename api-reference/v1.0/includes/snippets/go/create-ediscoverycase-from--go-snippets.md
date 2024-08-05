---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-sdk-go/models/security"
	  //other-imports
)

requestBody := graphmodelssecurity.NewEdiscoveryCase()
displayName := "CONTOSO LITIGATION-005"
requestBody.SetDisplayName(&displayName) 
description := "Project Bazooka"
requestBody.SetDescription(&description) 
externalId := "324516"
requestBody.SetExternalId(&externalId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
ediscoveryCases, err := graphClient.Security().Cases().EdiscoveryCases().Post(context.Background(), requestBody, nil)


```