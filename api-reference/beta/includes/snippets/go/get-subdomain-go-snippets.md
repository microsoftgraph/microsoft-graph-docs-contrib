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



subdomains, err := graphClient.Security().ThreatIntelligence().Subdomains().BySubdomainId("subdomain-id").Get(context.Background(), nil)


```