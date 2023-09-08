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



articleIndicators, err := graphClient.Security().ThreatIntelligence().ArticleIndicators().ByArticleIndicatorId("articleIndicator-id").Get(context.Background(), nil)


```