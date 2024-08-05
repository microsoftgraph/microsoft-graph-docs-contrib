---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

requestBody := graphusers.NewSetUserPreferredPresencePostRequestBody()
availability := "DoNotDisturb"
requestBody.SetAvailability(&availability) 
activity := "DoNotDisturb"
requestBody.SetActivity(&activity) 
expirationDuration , err := abstractions.ParseISODuration("PT8H")
requestBody.SetExpirationDuration(&expirationDuration) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Users().ByUserId("user-id").Presence().SetUserPreferredPresence().Post(context.Background(), requestBody, nil)


```