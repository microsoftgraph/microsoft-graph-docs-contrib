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



sections, err := graphClient.Me().Onenote().SectionGroups().BySectionGroupId("sectionGroup-id").Sections().Get(context.Background(), nil)


```