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


allowedValue := graphmodels.NewAllowedValue()
id := "Alpine"
allowedValue.SetId(&id) 
isActive := true
allowedValue.SetIsActive(&isActive) 
allowedValue1 := graphmodels.NewAllowedValue()
id := "Baker"
allowedValue1.SetId(&id) 
isActive := true
allowedValue1.SetIsActive(&isActive) 
allowedValue2 := graphmodels.NewAllowedValue()
id := "Cascade"
allowedValue2.SetId(&id) 
isActive := true
allowedValue2.SetIsActive(&isActive) 

allowedValues := []graphmodels.AllowedValueable {
	allowedValue,
	allowedValue1,
	allowedValue2,

}
requestBody.SetAllowedValues(allowedValues)

result, err := graphClient.Directory().CustomSecurityAttributeDefinitions().Post(context.Background(), requestBody, nil)


```