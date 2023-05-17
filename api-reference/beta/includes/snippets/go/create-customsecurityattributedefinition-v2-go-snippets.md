---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCustomSecurityAttributeDefinition()
attributeSet := "Engineering"
requestBody.SetAttributeSet(&attributeSet) 
description := "Active projects for user"
requestBody.SetDescription(&description) 
isCollection := true
requestBody.SetIsCollection(&isCollection) 
isSearchable := true
requestBody.SetIsSearchable(&isSearchable) 
name := "Project"
requestBody.SetName(&name) 
status := "Available"
requestBody.SetStatus(&status) 
type := "String"
requestBody.SetType(&type) 
usePreDefinedValuesOnly := true
requestBody.SetUsePreDefinedValuesOnly(&usePreDefinedValuesOnly) 

result, err := graphClient.Directory().CustomSecurityAttributeDefinitions().Post(context.Background(), requestBody, nil)


```