---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdevicemanagement.NewApplyConfigPostRequestBody()
cloudPcIds := []string {
	"52aa2645-36ee-47d2-9eb3-b8fbb17c3fc4",
	"ff117b6c-e3e6-41be-9cae-eb6743249a30",
}
requestBody.SetCloudPcIds(cloudPcIds)
policySettings := graphmodels.REGION_CLOUDPCPOLICYSETTINGTYPE 
requestBody.SetPolicySettings(&policySettings) 

graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPolicies().ApplyConfig().Post(context.Background(), requestBody, nil)


```