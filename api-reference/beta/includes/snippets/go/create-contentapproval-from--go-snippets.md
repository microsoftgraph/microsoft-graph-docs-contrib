---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelswindowsupdates "github.com/microsoftgraph/msgraph-beta-sdk-go/models/windowsupdates"
	  //other-imports
)

requestBody := graphmodelswindowsupdates.NewComplianceChange()
content := graphmodelswindowsupdates.NewCatalogContent()
catalogEntry := graphmodelswindowsupdates.NewFeatureUpdateCatalogEntry()
id := "6b7e60db-a8e4-426a-9aed-bd12b5c0b9d4"
catalogEntry.SetId(&id) 
content.SetCatalogEntry(catalogEntry)
requestBody.SetContent(content)
deploymentSettings := graphmodelswindowsupdates.NewDeploymentSettings()
requestBody.SetDeploymentSettings(deploymentSettings)
additionalData := map[string]interface{}{
schedule := graph.New()
startDateTime := "String (timestamp)"
schedule.SetStartDateTime(&startDateTime) 
gradualRollout := graph.New()
endDateTime := "String (timestamp)"
gradualRollout.SetEndDateTime(&endDateTime) 
	schedule.SetGradualRollout(gradualRollout)
	requestBody.SetSchedule(schedule)
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
complianceChanges, err := graphClient.Admin().Windows().Updates().UpdatePolicies().ByUpdatePolicyId("updatePolicy-id").ComplianceChanges().Post(context.Background(), requestBody, nil)


```