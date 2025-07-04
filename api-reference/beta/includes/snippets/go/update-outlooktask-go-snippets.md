---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "outlook.timezone=\"Eastern Standard Time\"")

configuration := &graphusers.OutlookTasksItemRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewOutlookTask()
dueDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2016-05-06T16:00:00"
dueDateTime.SetDateTime(&dateTime) 
timeZone := "Eastern Standard Time"
dueDateTime.SetTimeZone(&timeZone) 
requestBody.SetDueDateTime(dueDateTime)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
tasks, err := graphClient.Me().Outlook().Tasks().ByOutlookTaskId("outlookTask-id").Patch(context.Background(), requestBody, configuration)


```