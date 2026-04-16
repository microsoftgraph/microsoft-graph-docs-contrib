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
completeAfterDateTime , err := time.Parse(time.RFC3339, "2025-05-22T17:14:52Z")
requestBody.SetCompleteAfterDateTime(&completeAfterDateTime) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
crossTenantMigrationJobs, err := graphClient.Solutions().Migrations().CrossTenantMigrationJobs().ByCrossTenantMigrationJobId("crossTenantMigrationJob-id").Patch(context.Background(), requestBody, nil)


```