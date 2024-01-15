---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentityprotection "github.com/microsoftgraph/msgraph-sdk-go/identityprotection"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphidentityprotection.NewConfirmCompromisedPostRequestBody()
servicePrincipalIds := []string {
	"9089a539-a539-9089-39a5-899039a58990",
}
requestBody.SetServicePrincipalIds(servicePrincipalIds)

graphClient.IdentityProtection().RiskyServicePrincipals().ConfirmCompromised().Post(context.Background(), requestBody, nil)


```