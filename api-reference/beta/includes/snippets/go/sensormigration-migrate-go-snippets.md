---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  //other-imports
)

requestBody := graphsecurity.NewMigratePostRequestBody()
sensorIds := []string {
	"fdce0c43-15e8-e322-7656-aff297505af5",
	"a1b2c3d4-e5f6-7890-abcd-ef1234567890",
}
requestBody.SetSensorIds(sensorIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
microsoftGraphSecurityMigrate, err := graphClient.Security().Identities().SensorMigration().MicrosoftGraphSecurityMigrate().Post(context.Background(), requestBody, nil)


```