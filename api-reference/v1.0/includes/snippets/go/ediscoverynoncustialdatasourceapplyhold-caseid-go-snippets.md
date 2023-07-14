---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphsecurity.NewApplyHoldPostRequestBody()
ids := []string {
	"39333641443238353535383731453339",
	"46333131344239353834433430454335",
}
requestBody.SetIds(ids)

graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").NoncustodialDataSources().MicrosoftGraphSecurityApplyHold().Post(context.Background(), requestBody, nil)


```