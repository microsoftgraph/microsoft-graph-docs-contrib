---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



federationConfiguration, err := graphClient.Domains().ByDomainId("domain-id").FederationConfiguration().Get(context.Background(), nil)


```