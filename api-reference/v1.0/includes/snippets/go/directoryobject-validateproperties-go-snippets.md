---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphdirectoryobjects "github.com/microsoftgraph/msgraph-sdk-go/directoryobjects"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdirectoryobjects.NewValidatePropertiesPostRequestBody()
entityType := "Group"
requestBody.SetEntityType(&entityType) 
displayName := "Myprefix_test_mysuffix"
requestBody.SetDisplayName(&displayName) 
mailNickname := "Myprefix_test_mysuffix"
requestBody.SetMailNickname(&mailNickname) 
onBehalfOfUserId := uuid.MustParse("onBehalfOfUserId-value")
requestBody.SetOnBehalfOfUserId(&onBehalfOfUserId) 

graphClient.DirectoryObjects().ValidateProperties().Post(context.Background(), requestBody, nil)


```