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



complianceManagementPartners, err := graphClient.DeviceManagement().ComplianceManagementPartners().ByComplianceManagementPartnerId("complianceManagementPartner-id").Get(context.Background(), nil)


```