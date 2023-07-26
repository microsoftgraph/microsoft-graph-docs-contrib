---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCloudPcExternalPartnerSetting()
enableConnection := true
requestBody.SetEnableConnection(&enableConnection) 

result, err := graphClient.DeviceManagement().VirtualEndpoint().ExternalPartnerSettings().ByExternalPartnerSettingId("cloudPcExternalPartnerSetting-id").Patch(context.Background(), requestBody, nil)


```