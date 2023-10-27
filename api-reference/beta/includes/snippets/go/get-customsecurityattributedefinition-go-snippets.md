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



customSecurityAttributeDefinitions, err := graphClient.Directory().CustomSecurityAttributeDefinitions().ByCustomSecurityAttributeDefinitionId("customSecurityAttributeDefinition-id").Get(context.Background(), nil)


```