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



referenceDefinitions, err := graphClient.External().IndustryData().ReferenceDefinitions().ByReferenceDefinitionId("referenceDefinition-id").Get(context.Background(), nil)


```