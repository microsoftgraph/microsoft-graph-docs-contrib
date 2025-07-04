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


requestFilter := "protectionDateTime lt 2024-05-12T10:01:00Z"

requestParameters := &graphsolutions.BackupRestoreRestorePointsRequestBuilderGetQueryParameters{
	Expand: [] string {"protectionUnit($filter=id eq 'd234cf54-e0fb-49b7-9c8a-5bcd1439e853')"},
	Filter: &requestFilter,
}
configuration := &graphsolutions.BackupRestoreRestorePointsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
restorePoints, err := graphClient.Solutions().BackupRestore().RestorePoints().Get(context.Background(), configuration)


```