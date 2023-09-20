---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdirectory "github.com/microsoftgraph/msgraph-beta-sdk-go/directory"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdirectory.NewGetUserOwnedObjectsPostRequestBody()
userId := "55ac777c-109e-4022-b58c-470c8fcb6892"
requestBody.SetUserId(&userId) 
type := "Group"
requestBody.SetType(&type) 

getUserOwnedObjects, err := graphClient.Directory().DeletedItems().GetUserOwnedObjects().Post(context.Background(), requestBody, nil)


```