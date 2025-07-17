---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "time"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsolutions "github.com/microsoftgraph/msgraph-sdk-go/solutions"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Authorization", "Bearer <Access-Token>")

configuration := &graphsolutions.BackupRestoreServiceAppsItemActivateRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphsolutions.NewActivatePostRequestBody()
effectiveDateTime , err := time.Parse(time.RFC3339, "2024-04-19T12:01:03.45Z")
requestBody.SetEffectiveDateTime(&effectiveDateTime) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
activate, err := graphClient.Solutions().BackupRestore().ServiceApps().ByServiceAppId("serviceApp-id").Activate().Post(context.Background(), requestBody, configuration)


```