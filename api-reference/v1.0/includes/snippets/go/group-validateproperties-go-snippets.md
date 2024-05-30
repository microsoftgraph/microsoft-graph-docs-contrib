---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-sdk-go/groups"
	  //other-imports
)

requestBody := graphgroups.NewValidatePropertiesPostRequestBody()
displayName := "Myprefix_test_mysuffix"
requestBody.SetDisplayName(&displayName) 
mailNickname := "Myprefix_test_mysuffix"
requestBody.SetMailNickname(&mailNickname) 
onBehalfOfUserId := uuid.MustParse("onBehalfOfUserId-value")
requestBody.SetOnBehalfOfUserId(&onBehalfOfUserId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Groups().ByGroupId("group-id").ValidateProperties().Post(context.Background(), requestBody, nil)


```