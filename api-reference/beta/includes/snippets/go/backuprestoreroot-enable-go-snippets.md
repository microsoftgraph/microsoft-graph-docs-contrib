---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsolutions "github.com/microsoftgraph/msgraph-beta-sdk-go/solutions"
	  //other-imports
)

requestBody := graphsolutions.NewEnablePostRequestBody()
appOwnerTenantId := "23014d8c-71fe-4d00-a01a-31850bc5b42a"
requestBody.SetAppOwnerTenantId(&appOwnerTenantId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
enable, err := graphClient.Solutions().BackupRestore().Enable().Post(context.Background(), requestBody, nil)


```