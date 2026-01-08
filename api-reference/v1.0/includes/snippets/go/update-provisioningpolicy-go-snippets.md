---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewCloudPcProvisioningPolicy()
displayName := "HR provisioning policy"
requestBody.SetDisplayName(&displayName) 
description := "Provisioning policy for India HR employees"
requestBody.SetDescription(&description) 
microsoftManagedDesktop := graphmodels.NewMicrosoftManagedDesktop()
managedType := graphmodels.STARTERMANAGED_MICROSOFTMANAGEDDESKTOPTYPE 
microsoftManagedDesktop.SetManagedType(&managedType) 
profile := null
microsoftManagedDesktop.SetProfile(&profile) 
requestBody.SetMicrosoftManagedDesktop(microsoftManagedDesktop)
autopatch := graphmodels.NewCloudPcProvisioningPolicyAutopatch()
autopatchGroupId := "91197a0b-3a74-408d-ba88-bce3fdc4e5eb"
autopatch.SetAutopatchGroupId(&autopatchGroupId) 
requestBody.SetAutopatch(autopatch)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
provisioningPolicies, err := graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPolicies().ByCloudPcProvisioningPolicyId("cloudPcProvisioningPolicy-id").Patch(context.Background(), requestBody, nil)


```