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

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAuthenticationEventsFlow()
onAttributeCollection := graphmodels.NewOnAttributeCollectionExternalUsersSelfServiceSignUp()
attributeCollectionPage := graphmodels.NewAuthenticationAttributeCollectionPage()
customStringsFileId := null
attributeCollectionPage.SetCustomStringsFileId(&customStringsFileId) 


authenticationAttributeCollectionPageViewConfiguration := graphmodels.NewAuthenticationAttributeCollectionPageViewConfiguration()
title := null
authenticationAttributeCollectionPageViewConfiguration.SetTitle(&title) 
description := null
authenticationAttributeCollectionPageViewConfiguration.SetDescription(&description) 


authenticationAttributeCollectionInputConfiguration := graphmodels.NewAuthenticationAttributeCollectionInputConfiguration()
attribute := "email"
authenticationAttributeCollectionInputConfiguration.SetAttribute(&attribute) 
label := "Email Address"
authenticationAttributeCollectionInputConfiguration.SetLabel(&label) 
inputType := graphmodels.TEXT_AUTHENTICATIONATTRIBUTECOLLECTIONINPUTTYPE 
authenticationAttributeCollectionInputConfiguration.SetInputType(&inputType) 
defaultValue := null
authenticationAttributeCollectionInputConfiguration.SetDefaultValue(&defaultValue) 
hidden := true
authenticationAttributeCollectionInputConfiguration.SetHidden(&hidden) 
editable := false
authenticationAttributeCollectionInputConfiguration.SetEditable(&editable) 
writeToDirectory := true
authenticationAttributeCollectionInputConfiguration.SetWriteToDirectory(&writeToDirectory) 
required := true
authenticationAttributeCollectionInputConfiguration.SetRequired(&required) 
validationRegEx := "^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$"
authenticationAttributeCollectionInputConfiguration.SetValidationRegEx(&validationRegEx) 
options := []graphmodels.AuthenticationAttributeCollectionOptionConfigurationable {

}
authenticationAttributeCollectionInputConfiguration.SetOptions(options)
authenticationAttributeCollectionInputConfiguration1 := graphmodels.NewAuthenticationAttributeCollectionInputConfiguration()
attribute := "displayName"
authenticationAttributeCollectionInputConfiguration1.SetAttribute(&attribute) 
label := "Display Name"
authenticationAttributeCollectionInputConfiguration1.SetLabel(&label) 
inputType := graphmodels.TEXT_AUTHENTICATIONATTRIBUTECOLLECTIONINPUTTYPE 
authenticationAttributeCollectionInputConfiguration1.SetInputType(&inputType) 
defaultValue := null
authenticationAttributeCollectionInputConfiguration1.SetDefaultValue(&defaultValue) 
hidden := false
authenticationAttributeCollectionInputConfiguration1.SetHidden(&hidden) 
editable := true
authenticationAttributeCollectionInputConfiguration1.SetEditable(&editable) 
writeToDirectory := true
authenticationAttributeCollectionInputConfiguration1.SetWriteToDirectory(&writeToDirectory) 
required := false
authenticationAttributeCollectionInputConfiguration1.SetRequired(&required) 
validationRegEx := "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$"
authenticationAttributeCollectionInputConfiguration1.SetValidationRegEx(&validationRegEx) 
options := []graphmodels.AuthenticationAttributeCollectionOptionConfigurationable {

}
authenticationAttributeCollectionInputConfiguration1.SetOptions(options)
authenticationAttributeCollectionInputConfiguration2 := graphmodels.NewAuthenticationAttributeCollectionInputConfiguration()
attribute := "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor"
authenticationAttributeCollectionInputConfiguration2.SetAttribute(&attribute) 
label := "Favorite color"
authenticationAttributeCollectionInputConfiguration2.SetLabel(&label) 
inputType := graphmodels.TEXT_AUTHENTICATIONATTRIBUTECOLLECTIONINPUTTYPE 
authenticationAttributeCollectionInputConfiguration2.SetInputType(&inputType) 
defaultValue := null
authenticationAttributeCollectionInputConfiguration2.SetDefaultValue(&defaultValue) 
hidden := false
authenticationAttributeCollectionInputConfiguration2.SetHidden(&hidden) 
editable := true
authenticationAttributeCollectionInputConfiguration2.SetEditable(&editable) 
writeToDirectory := true
authenticationAttributeCollectionInputConfiguration2.SetWriteToDirectory(&writeToDirectory) 
required := false
authenticationAttributeCollectionInputConfiguration2.SetRequired(&required) 
validationRegEx := "^.*"
authenticationAttributeCollectionInputConfiguration2.SetValidationRegEx(&validationRegEx) 
options := []graphmodels.AuthenticationAttributeCollectionOptionConfigurationable {

}
authenticationAttributeCollectionInputConfiguration2.SetOptions(options)

inputs := []graphmodels.AuthenticationAttributeCollectionInputConfigurationable {
	authenticationAttributeCollectionInputConfiguration,
	authenticationAttributeCollectionInputConfiguration1,
	authenticationAttributeCollectionInputConfiguration2,
}
authenticationAttributeCollectionPageViewConfiguration.SetInputs(inputs)

views := []graphmodels.AuthenticationAttributeCollectionPageViewConfigurationable {
	authenticationAttributeCollectionPageViewConfiguration,
}
attributeCollectionPage.SetViews(views)
onAttributeCollection.SetAttributeCollectionPage(attributeCollectionPage)
requestBody.SetOnAttributeCollection(onAttributeCollection)

authenticationEventsFlows, err := graphClient.Identity().AuthenticationEventsFlows().ByAuthenticationEventsFlowId("authenticationEventsFlow-id").Patch(context.Background(), requestBody, nil)


```