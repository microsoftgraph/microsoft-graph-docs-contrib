---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsolutions "github.com/microsoftgraph/msgraph-beta-sdk-go/solutions"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphsolutions.NewValidatePostRequestBody()
displayName := "Contoso_migration_validation_job"
requestBody.SetDisplayName(&displayName) 
completeAfterDateTime := "2025-05-22T17:14:52Z"
requestBody.SetCompleteAfterDateTime(&completeAfterDateTime) 
sourceTenantId := "12345678-1234-1234-1234-123456789012"
requestBody.SetSourceTenantId(&sourceTenantId) 
exchangeSettings := graphmodels.NewExchangeOnlineCrossTenantMigrationSettings()
targetDeliveryDomain := "fabrikam.com"
exchangeSettings.SetTargetDeliveryDomain(&targetDeliveryDomain) 
sourceEndpoint := "EXOHandler"
exchangeSettings.SetSourceEndpoint(&sourceEndpoint) 
requestBody.SetExchangeSettings(exchangeSettings)
resources := []string {
	"b5b8bc4f-0e36-4ad3-8ddf-248b68260b89",
	"ac87d040-a081-426c-a73b-81133f458a29",
}
requestBody.SetResources(resources)
workloads := []string {
	"Teams",
}
requestBody.SetWorkloads(workloads)
resourceType := "Users"
requestBody.SetResourceType(&resourceType) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
validate, err := graphClient.Solutions().Migrations().CrossTenantMigrationJobs().Validate().Post(context.Background(), requestBody, nil)


```