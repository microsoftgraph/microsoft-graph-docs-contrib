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



result, err := graphClient.Teamwork().TeamTemplates().ByTeamTemplateId("teamTemplate-id").Definitions().ByDefinitionId("teamTemplateDefinition-id").TeamDefinition().Get(context.Background(), nil)


```