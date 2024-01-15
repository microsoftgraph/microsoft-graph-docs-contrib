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



hostedContent, err := graphClient.AppCatalogs().TeamsApps().ByTeamsAppId("teamsApp-id").AppDefinitions().ByTeamsAppDefinitionId("teamsAppDefinition-id").ColorIcon().HostedContent().Get(context.Background(), nil)


```