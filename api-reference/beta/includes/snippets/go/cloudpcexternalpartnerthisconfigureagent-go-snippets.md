---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphdevicemanagement.NewConfigureAgentPostRequestBody()
agentSetting := graphmodels.NewCloudPcExternalPartnerAgentSetting()
agentUrl := "https://rmmExample.microsoft.com/agent/rmmExampleAgent.msi"
agentSetting.SetAgentUrl(&agentUrl) 
agentSha256 := "EC6AF1EA0367D16DDE6639A89A080A524CEBC4D4BEDFE00ED0CAC4B865A918D8"
agentSetting.SetAgentSha256(&agentSha256) 
installParameters := []string {
	"/quiet",
	"/norestart",
	"TOKENID=e69c1577-d465-4e57-af33-0ddea43feeb1",
}
agentSetting.SetInstallParameters(installParameters)
autoDeploymentEnabled := true
agentSetting.SetAutoDeploymentEnabled(&autoDeploymentEnabled) 
requestBody.SetAgentSetting(agentSetting)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().VirtualEndpoint().ExternalPartners().ByCloudPcExternalPartnerId("cloudPcExternalPartner-id").ConfigureAgent().Post(context.Background(), requestBody, nil)


```