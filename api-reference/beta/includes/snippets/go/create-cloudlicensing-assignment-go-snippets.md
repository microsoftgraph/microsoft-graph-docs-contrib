---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelscloudlicensing "github.com/microsoftgraph/msgraph-beta-sdk-go/models/cloudlicensing"
	  //other-imports
)

requestBody := graphmodelscloudlicensing.NewAssignment()
disabledServicePlanIds := []uuid.UUID {
	uuid.MustParse("bed136c6-b799-4462-824d-fc045d3a9d25"),
}
requestBody.SetDisabledServicePlanIds(disabledServicePlanIds)
additionalData := map[string]interface{}{
	"allotment@odata.bind" : "https://graph.microsoft.com/beta/admin/cloudLicensing/allotments/rkocgef3dgjhnu3gmu2mqhbdbmwcymnf6fk3k6a7zbui5e7gfpmi", 
	"assignedTo@odata.bind" : "https://graph.microsoft.com/beta/users/6d645c5f-089f-40d8-b0e7-136fb5c56d5b", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignments, err := graphClient.Admin().CloudLicensing().Assignments().Post(context.Background(), requestBody, nil)


```