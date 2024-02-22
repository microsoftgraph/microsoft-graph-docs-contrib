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



sourceSystems, err := graphClient.External().IndustryData().SourceSystems().BySourceSystemDefinitionId("sourceSystemDefinition-id").Get(context.Background(), nil)


```