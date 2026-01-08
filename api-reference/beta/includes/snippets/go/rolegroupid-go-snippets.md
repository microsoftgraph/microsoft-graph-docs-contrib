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

requestBody := graphmodelssecurity.NewEdiscoveryCaseMember()
recipientType := graphmodels.ROLEGROUP_RECIPIENTTYPE 
requestBody.SetRecipientType(&recipientType) 
id := "b9fb4f22-5f90-47a0-b309-44fe96a959fd"
requestBody.SetId(&id) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
caseMembers, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").CaseMembers().Post(context.Background(), requestBody, nil)


```