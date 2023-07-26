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



graphClient.Organization().ByOrganization().Id("organization-id").CertificateBasedAuthConfiguration().ByCertificateBasedAuthConfiguration().Id("certificateBasedAuthConfiguration-id").Delete(context.Background(), nil)


```