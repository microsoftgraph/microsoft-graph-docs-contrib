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



graphClient.Organization().ByOrganizationId("organization-id").CertificateBasedAuthConfiguration().ByCertificateBasedAuthConfigurationId("certificateBasedAuthConfiguration-id").Delete(context.Background(), nil)


```