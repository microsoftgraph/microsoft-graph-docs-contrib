---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewEdiscoveryReviewTag()
displayName := "My tag API 2"
requestBody.SetDisplayName(&displayName) 
description := "Use Graph API to create tags (updated)"
requestBody.SetDescription(&description) 

result, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").Tags().ByTagId("ediscoveryReviewTag-id").Patch(context.Background(), requestBody, nil)


```