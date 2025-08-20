---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

requestBody := graphsecurity.NewInvokeActionPostRequestBody()
accountId := "256db173-930a-4991-9061-0d51a9a93ba5"
requestBody.SetAccountId(&accountId) 
action := graphmodels.DISABLE_ACTION 
requestBody.SetAction(&action) 
identityProvider := graphmodels.ACTIVEDIRECTORY_IDENTITYPROVIDER 
requestBody.SetIdentityProvider(&identityProvider) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
microsoftGraphSecurityInvokeAction, err := graphClient.Security().Identities().IdentityAccounts().ByIdentityAccountsId("identityAccounts-id").MicrosoftGraphSecurityInvokeAction().Post(context.Background(), requestBody, nil)


```