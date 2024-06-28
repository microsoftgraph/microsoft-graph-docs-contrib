---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewMailboxSettings()
automaticRepliesSetting := graphmodels.NewAutomaticRepliesSetting()
status := graphmodels.SCHEDULED_AUTOMATICREPLIESSTATUS 
automaticRepliesSetting.SetStatus(&status) 
scheduledStartDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2016-03-20T18:00:00.0000000"
scheduledStartDateTime.SetDateTime(&dateTime) 
timeZone := "UTC"
scheduledStartDateTime.SetTimeZone(&timeZone) 
automaticRepliesSetting.SetScheduledStartDateTime(scheduledStartDateTime)
scheduledEndDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2016-03-28T18:00:00.0000000"
scheduledEndDateTime.SetDateTime(&dateTime) 
timeZone := "UTC"
scheduledEndDateTime.SetTimeZone(&timeZone) 
automaticRepliesSetting.SetScheduledEndDateTime(scheduledEndDateTime)
requestBody.SetAutomaticRepliesSetting(automaticRepliesSetting)
additionalData := map[string]interface{}{
	"@odata.context" : "https://graph.microsoft.com/v1.0/$metadata#Me/mailboxSettings", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
mailboxSettings, err := graphClient.Me().MailboxSettings().Patch(context.Background(), requestBody, nil)


```