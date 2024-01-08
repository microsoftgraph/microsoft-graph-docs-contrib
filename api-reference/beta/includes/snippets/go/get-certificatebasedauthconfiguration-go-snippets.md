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



certificateBasedAuthConfiguration, err := graphClient.Organization().ByOrganizationId("organization-id").CertificateBasedAuthConfiguration().ByCertificateBasedAuthConfigurationId("certificateBasedAuthConfiguration-id").Get(context.Background(), nil)


```