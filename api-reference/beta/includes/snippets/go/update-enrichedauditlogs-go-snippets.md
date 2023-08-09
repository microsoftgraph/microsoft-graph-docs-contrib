---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsnetworkaccess.NewEnrichedAuditLogs()
sharepoint := graphmodelsnetworkaccess.NewEnrichedAuditLogsSettings()
requestBody.SetSharepoint(sharepoint)
teams := graphmodelsnetworkaccess.NewEnrichedAuditLogsSettings()
requestBody.SetTeams(teams)
exchange := graphmodelsnetworkaccess.NewEnrichedAuditLogsSettings()
requestBody.SetExchange(exchange)

enrichedAuditLogs, err := graphClient.NetworkAccess().Settings().EnrichedAuditLogs().Patch(context.Background(), requestBody, nil)


```