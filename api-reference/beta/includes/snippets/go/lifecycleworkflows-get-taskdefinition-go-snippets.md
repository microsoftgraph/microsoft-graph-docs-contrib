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



taskDefinitions, err := graphClient.IdentityGovernance().LifecycleWorkflows().TaskDefinitions().ByTaskDefinitionId("taskDefinition-id").Get(context.Background(), nil)


```