---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.DeviceAppManagement().EnterpriseCodeSigningCertificates().ByEnterpriseCodeSigningCertificateId("enterpriseCodeSigningCertificate-id").Delete(context.Background(), nil)


```