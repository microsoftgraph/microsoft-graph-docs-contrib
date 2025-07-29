---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelshealthmonitoring "github.com/microsoftgraph/msgraph-beta-sdk-go/models/healthmonitoring"
	  //other-imports
)

requestBody := graphmodelshealthmonitoring.NewAlertConfiguration()


emailNotificationConfiguration := graphmodelshealthmonitoring.NewEmailNotificationConfiguration()
groupId := "c5140914-9507-4180-b60c-04d5ec5eddcb"
emailNotificationConfiguration.SetGroupId(&groupId) 
isEnabled := true
emailNotificationConfiguration.SetIsEnabled(&isEnabled) 

emailNotificationConfigurations := []graphmodelshealthmonitoring.EmailNotificationConfigurationable {
	emailNotificationConfiguration,
}
requestBody.SetEmailNotificationConfigurations(emailNotificationConfigurations)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
alertConfigurations, err := graphClient.Reports().HealthMonitoring().AlertConfigurations().ByAlertConfigurationId("alertConfiguration-id").Patch(context.Background(), requestBody, nil)


```