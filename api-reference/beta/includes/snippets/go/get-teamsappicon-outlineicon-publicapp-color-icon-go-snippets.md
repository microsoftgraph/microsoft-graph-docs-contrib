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



colorIcon, err := graphClient.AppCatalogs().TeamsApps().ByTeamsAppId("teamsApp-id").AppDefinitions().ByTeamsAppDefinitionId("teamsAppDefinition-id").ColorIcon().Get(context.Background(), nil)


```