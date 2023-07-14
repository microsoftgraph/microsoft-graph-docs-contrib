---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdirectoryobjects "github.com/microsoftgraph/msgraph-sdk-go/directoryobjects"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdirectoryobjects.NewGetMemberGroupsPostRequestBody()
securityEnabledOnly := false
requestBody.SetSecurityEnabledOnly(&securityEnabledOnly) 

result, err := graphClient.DirectoryObjects().ByDirectoryObjectId("directoryObject-id").GetMemberGroups().Post(context.Background(), requestBody, nil)


```