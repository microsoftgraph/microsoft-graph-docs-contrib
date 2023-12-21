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



teamDefinition, err := graphClient.Teamwork().TeamTemplates().ByTeamTemplateId("teamTemplate-id").Definitions().ByTeamTemplateDefinitionId("teamTemplateDefinition-id").TeamDefinition().Get(context.Background(), nil)


```