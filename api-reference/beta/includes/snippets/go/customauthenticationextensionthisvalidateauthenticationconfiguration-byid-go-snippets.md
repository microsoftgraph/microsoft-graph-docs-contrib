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



validateAuthenticationConfiguration, err := graphClient.Identity().CustomAuthenticationExtensions().ByCustomAuthenticationExtensionId("customAuthenticationExtension-id").ValidateAuthenticationConfiguration().Post(context.Background(), nil)


```