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



sharedCookies, err := graphClient.Admin().Edge().InternetExplorerMode().SiteLists().ByBrowserSiteListId("browserSiteList-id").SharedCookies().Get(context.Background(), nil)


```