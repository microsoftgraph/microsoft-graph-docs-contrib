---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-sdk-go/security"
	  //other-imports
)

requestBody := graphsecurity.NewRunHuntingQueryPostRequestBody()
query := "DeviceProcessEvents"
requestBody.SetQuery(&query) 
timespan := "P90D"
requestBody.SetTimespan(&timespan) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
microsoftGraphSecurityRunHuntingQuery, err := graphClient.Security().MicrosoftGraphSecurityRunHuntingQuery().Post(context.Background(), requestBody, nil)


```