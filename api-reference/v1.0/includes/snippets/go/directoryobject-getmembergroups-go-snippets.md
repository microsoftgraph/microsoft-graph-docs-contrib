---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/DirectoryObjects/Item/GetMemberGroups"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewGetMemberGroupsPostRequestBody()
securityEnabledOnly := false
requestBody.SetSecurityEnabledOnly(&securityEnabledOnly) 

result, err := graphClient.DirectoryObjects().ByDirectoryObjectId("directoryObject-id").GetMemberGroups().Post(context.Background(), requestBody, nil)


```