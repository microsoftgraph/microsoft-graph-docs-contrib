---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewColumnDefinition()
description := "test"
requestBody.SetDescription(&description) 
enforceUniqueValues := false
requestBody.SetEnforceUniqueValues(&enforceUniqueValues) 
hidden := false
requestBody.SetHidden(&hidden) 
indexed := false
requestBody.SetIndexed(&indexed) 
name := "Title"
requestBody.SetName(&name) 
text := graphmodels.NewTextColumn()
allowMultipleLines := false
text.SetAllowMultipleLines(&allowMultipleLines) 
appendChangesToExistingText := false
text.SetAppendChangesToExistingText(&appendChangesToExistingText) 
linesForEditing := int32(0)
text.SetLinesForEditing(&linesForEditing) 
maxLength := int32(255)
text.SetMaxLength(&maxLength) 
requestBody.SetText(text)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
columns, err := graphClient.Storage().FileStorage().Containers().ByFileStorageContainerId("fileStorageContainer-id").Columns().Post(context.Background(), requestBody, nil)


```