---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewCrossTenantMigrationJob()
displayName := "xtmigration_user_req_1"
requestBody.SetDisplayName(&displayName) 
completeAfterDateTime , err := time.Parse(time.RFC3339, "2024-12-09T22:48:03.092Z")
requestBody.SetCompleteAfterDateTime(&completeAfterDateTime) 
sourceTenantId := "12345678-1234-1234-1234-123456789012"
requestBody.SetSourceTenantId(&sourceTenantId) 
exchangeSettings := graphmodels.NewExchangeOnlineCrossTenantMigrationSettings()
targetDeliveryDomain := "xtmigration.onmicrosoft.com"
exchangeSettings.SetTargetDeliveryDomain(&targetDeliveryDomain) 
sourceEndpoint := "sampleEndpointText"
exchangeSettings.SetSourceEndpoint(&sourceEndpoint) 
requestBody.SetExchangeSettings(exchangeSettings)
resources := []string {
	"4dd550d9-9ea2-4e71-a16b-60b1d1c4f506",
	"63f15b55-f61a-49cb-a599-2e3d233afb2c",
	"41d94bac-3a53-47d6-a89e-583830104e15",
}
requestBody.SetResources(resources)
resourceType := "Users"
requestBody.SetResourceType(&resourceType) 
workloads := []string {
	"Teams",
	"Exchange",
	"ODSP",
}
requestBody.SetWorkloads(workloads)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
crossTenantMigrationJobs, err := graphClient.Solutions().Migrations().CrossTenantMigrationJobs().Post(context.Background(), requestBody, nil)


```