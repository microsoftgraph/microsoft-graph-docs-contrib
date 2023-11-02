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



certificateBasedApplicationConfigurations, err := graphClient.Directory().CertificateAuthorities().CertificateBasedApplicationConfigurations().ByCertificateBasedApplicationConfigurationId("certificateBasedApplicationConfiguration-id").Get(context.Background(), nil)


```