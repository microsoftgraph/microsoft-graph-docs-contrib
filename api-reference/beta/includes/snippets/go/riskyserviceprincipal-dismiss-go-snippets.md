---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentityprotection "github.com/microsoftgraph/msgraph-beta-sdk-go/identityprotection"
	  //other-imports
)

requestBody := graphidentityprotection.NewDismissPostRequestBody()
servicePrincipalIds := []string {
	"9089a539-a539-9089-39a5-899039a58990",
}
requestBody.SetServicePrincipalIds(servicePrincipalIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.IdentityProtection().RiskyServicePrincipals().Dismiss().Post(context.Background(), requestBody, nil)


```