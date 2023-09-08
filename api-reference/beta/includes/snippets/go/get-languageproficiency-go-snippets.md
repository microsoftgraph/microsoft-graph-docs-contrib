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



languages, err := graphClient.Me().Profile().Languages().ByLanguageProficiencyId("languageProficiency-id").Get(context.Background(), nil)


```