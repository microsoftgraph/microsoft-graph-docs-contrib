---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAuthenticationEventsFlow()
additionalData := map[string]interface{}{
onAttributeCollection := graphmodels.New()
attributeCollectionPage := graphmodels.New()
	customStringsFileId := null
attributeCollectionPage.SetCustomStringsFileId(&customStringsFileId) 


 := graphmodels.New()
title := null
.SetTitle(&title) 
description := null
.SetDescription(&description) 


 := graphmodels.New()
attribute := "email"
.SetAttribute(&attribute) 
label := "Email Address"
.SetLabel(&label) 
inputType := "text"
.SetInputType(&inputType) 
defaultValue := null
.SetDefaultValue(&defaultValue) 
hidden := true
.SetHidden(&hidden) 
editable := false
.SetEditable(&editable) 
writeToDirectory := true
.SetWriteToDirectory(&writeToDirectory) 
required := true
.SetRequired(&required) 
validationRegEx := "^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$"
.SetValidationRegEx(&validationRegEx) 
options := []graphmodels.able {

}
.SetOptions(options)
 := graphmodels.New()
attribute := "displayName"
.SetAttribute(&attribute) 
label := "Display Name"
.SetLabel(&label) 
inputType := "text"
.SetInputType(&inputType) 
defaultValue := null
.SetDefaultValue(&defaultValue) 
hidden := false
.SetHidden(&hidden) 
editable := true
.SetEditable(&editable) 
writeToDirectory := true
.SetWriteToDirectory(&writeToDirectory) 
required := false
.SetRequired(&required) 
validationRegEx := "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$"
.SetValidationRegEx(&validationRegEx) 
options := []graphmodels.able {

}
.SetOptions(options)
 := graphmodels.New()
attribute := "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor"
.SetAttribute(&attribute) 
label := "Favorite color"
.SetLabel(&label) 
inputType := "text"
.SetInputType(&inputType) 
defaultValue := null
.SetDefaultValue(&defaultValue) 
hidden := false
.SetHidden(&hidden) 
editable := true
.SetEditable(&editable) 
writeToDirectory := true
.SetWriteToDirectory(&writeToDirectory) 
required := false
.SetRequired(&required) 
validationRegEx := "^.*"
.SetValidationRegEx(&validationRegEx) 
options := []graphmodels.able {

}
.SetOptions(options)

inputs := []graphmodels.Objectable {
	,
	,
	,

}
.SetInputs(inputs)

	views := []graphmodels.Objectable {
		,

	}
	attributeCollectionPage.SetViews(views)
	onAttributeCollection.SetAttributeCollectionPage(attributeCollectionPage)
	requestBody.SetOnAttributeCollection(onAttributeCollection)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Identity().AuthenticationEventsFlows().ByAuthenticationEventsFlowId("authenticationEventsFlow-id").Patch(context.Background(), requestBody, nil)


```