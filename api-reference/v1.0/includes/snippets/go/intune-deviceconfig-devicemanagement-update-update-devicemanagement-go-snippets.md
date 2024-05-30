---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewDeviceManagement()
settings := graphmodels.NewDeviceManagementSettings()
deviceComplianceCheckinThresholdDays := int32(4)
settings.SetDeviceComplianceCheckinThresholdDays(&deviceComplianceCheckinThresholdDays) 
isScheduledActionEnabled := true
settings.SetIsScheduledActionEnabled(&isScheduledActionEnabled) 
secureByDefault := true
settings.SetSecureByDefault(&secureByDefault) 
requestBody.SetSettings(settings)
intuneAccountId := uuid.MustParse("cf1549a1-49a1-cf15-a149-15cfa14915cf")
requestBody.SetIntuneAccountId(&intuneAccountId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deviceManagement, err := graphClient.DeviceManagement().Patch(context.Background(), requestBody, nil)


```