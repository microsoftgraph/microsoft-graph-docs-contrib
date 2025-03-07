---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsindustrydata "github.com/microsoftgraph/msgraph-beta-sdk-go/models/industrydata"
	  //other-imports
)

requestBody := graphmodelsindustrydata.NewReferenceDefinition()
referenceType := "RefGradeLevel"
requestBody.SetReferenceType(&referenceType) 
code := "TestGrade"
requestBody.SetCode(&code) 
isDisabled := false
requestBody.SetIsDisabled(&isDisabled) 
sortIndex := int32(300)
requestBody.SetSortIndex(&sortIndex) 
displayName := "New Test Grade Level"
requestBody.SetDisplayName(&displayName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
referenceDefinitions, err := graphClient.External().IndustryData().ReferenceDefinitions().Post(context.Background(), requestBody, nil)


```