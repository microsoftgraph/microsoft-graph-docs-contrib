---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

requestBody := graphmodelssecurity.NewDetectionRule()
status := graphmodels.DISABLED_DETECTIONRULESTATUS 
requestBody.SetStatus(&status) 
queryCondition := graphmodelssecurity.NewQueryCondition()
queryText := "DeviceProcessEvents | where InitiatingProcessFileName in~ ('winword.exe','excel.exe','outlook.exe') | where FileName == 'powershell.exe' | where ProcessCommandLine has '-enc'"
queryCondition.SetQueryText(&queryText) 
requestBody.SetQueryCondition(queryCondition)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
detectionRules, err := graphClient.Security().Rules().DetectionRules().ByDetectionRuleId("detectionRule-id").Patch(context.Background(), requestBody, nil)


```