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



userConsentRequests, err := graphClient.IdentityGovernance().AppConsent().AppConsentRequests().ByAppConsentRequestId("appConsentRequest-id").UserConsentRequests().Get(context.Background(), nil)


```