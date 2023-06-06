---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.AppCatalogs().TeamsApps().ByTeamsAppId("teamsApp-id").AppDefinitions().ByAppDefinitionId("teamsAppDefinition-id").OutlineIcon().HostedContent().Value().Get(context.Background(), nil)


```