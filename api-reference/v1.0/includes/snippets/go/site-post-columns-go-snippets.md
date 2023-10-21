---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

columns, err := graphClient.Sites().BySiteId("site-id").Columns().Post(context.Background(), requestBody, nil)


```