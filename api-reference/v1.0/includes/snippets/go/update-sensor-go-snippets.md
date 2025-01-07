---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-sdk-go/models/security"
	  //other-imports
)

requestBody := graphmodelssecurity.NewSensor()
settings := graphmodelssecurity.NewSensorSettings()
description := "dc1 settings new description"
settings.SetDescription(&description) 
domainControllerDnsNames := []string {
	"DC1.domain1.test.local",
}
settings.SetDomainControllerDnsNames(domainControllerDnsNames)
isDelayedDeploymentEnabled := false
settings.SetIsDelayedDeploymentEnabled(&isDelayedDeploymentEnabled) 
requestBody.SetSettings(settings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
sensors, err := graphClient.Security().Identities().Sensors().BySensorId("sensor-id").Patch(context.Background(), requestBody, nil)


```