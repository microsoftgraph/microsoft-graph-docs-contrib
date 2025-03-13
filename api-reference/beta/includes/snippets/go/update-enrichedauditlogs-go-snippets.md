---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

requestBody := graphmodelsnetworkaccess.NewEnrichedAuditLogs()
sharepoint := graphmodelsnetworkaccess.NewEnrichedAuditLogsSettings()
requestBody.SetSharepoint(sharepoint)
teams := graphmodelsnetworkaccess.NewEnrichedAuditLogsSettings()
requestBody.SetTeams(teams)
exchange := graphmodelsnetworkaccess.NewEnrichedAuditLogsSettings()
requestBody.SetExchange(exchange)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
enrichedAuditLogs, err := graphClient.NetworkAccess().Settings().EnrichedAuditLogs().Patch(context.Background(), requestBody, nil)


```