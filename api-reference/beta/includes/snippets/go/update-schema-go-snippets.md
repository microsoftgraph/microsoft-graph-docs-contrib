---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//externalConnectors"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSchema()
baseType := "microsoft.graph.externalItem"
requestBody.SetBaseType(&baseType) 


property := graphmodels.NewProperty()
name := "ticketTitle"
property.SetName(&name) 
type := graphmodels.STRING_PROPERTYTYPE 
property.SetType(&type) 
isSearchable := true
property.SetIsSearchable(&isSearchable) 
isRetrievable := true
property.SetIsRetrievable(&isRetrievable) 
labels := []graphmodels.Labelable {
	label := graphmodels.TITLE_LABEL 
	property.SetLabel(&label) 

}
property.SetLabels(labels)
property1 := graphmodels.NewProperty()
name := "priority"
property1.SetName(&name) 
type := graphmodels.STRING_PROPERTYTYPE 
property1.SetType(&type) 
isQueryable := true
property1.SetIsQueryable(&isQueryable) 
isRetrievable := true
property1.SetIsRetrievable(&isRetrievable) 
isSearchable := false
property1.SetIsSearchable(&isSearchable) 
property2 := graphmodels.NewProperty()
name := "assignee"
property2.SetName(&name) 
type := graphmodels.STRING_PROPERTYTYPE 
property2.SetType(&type) 
isRetrievable := true
property2.SetIsRetrievable(&isRetrievable) 

properties := []graphmodels.Propertyable {
	property,
	property1,
	property2,

}
requestBody.SetProperties(properties)

result, err := graphClient.External().Connections().ByConnectionId("externalConnection-id").Schema().Patch(context.Background(), requestBody, nil)


```