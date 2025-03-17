---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAuthenticationEventsFlow()
onAttributeCollection := graphmodels.NewOnAttributeCollectionExternalUsersSelfServiceSignUp()
attributeCollectionPage := graphmodels.NewAuthenticationAttributeCollectionPage()


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
required := true
authenticationAttributeCollectionInputConfiguration1.SetRequired(&required) 
validationRegEx := "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$"
authenticationAttributeCollectionInputConfiguration1.SetValidationRegEx(&validationRegEx) 
options := []graphmodels.AuthenticationAttributeCollectionOptionConfigurationable {

}
authenticationAttributeCollectionInputConfiguration1.SetOptions(options)
authenticationAttributeCollectionInputConfiguration2 := graphmodels.NewAuthenticationAttributeCollectionInputConfiguration()
attribute := "city"
authenticationAttributeCollectionInputConfiguration2.SetAttribute(&attribute) 
label := "City"
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
required := true
authenticationAttributeCollectionInputConfiguration2.SetRequired(&required) 
validationRegEx := "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$"
authenticationAttributeCollectionInputConfiguration2.SetValidationRegEx(&validationRegEx) 
options := []graphmodels.AuthenticationAttributeCollectionOptionConfigurationable {

}
authenticationAttributeCollectionInputConfiguration2.SetOptions(options)
authenticationAttributeCollectionInputConfiguration3 := graphmodels.NewAuthenticationAttributeCollectionInputConfiguration()
attribute := "extension_331d514c0c18477583ea7dd5a79feda2_RockorCountry"
authenticationAttributeCollectionInputConfiguration3.SetAttribute(&attribute) 
label := "Rock music or Country"
authenticationAttributeCollectionInputConfiguration3.SetLabel(&label) 
inputType := graphmodels.RADIOSINGLESELECT_AUTHENTICATIONATTRIBUTECOLLECTIONINPUTTYPE 
authenticationAttributeCollectionInputConfiguration3.SetInputType(&inputType) 
defaultValue := null
authenticationAttributeCollectionInputConfiguration3.SetDefaultValue(&defaultValue) 
hidden := false
authenticationAttributeCollectionInputConfiguration3.SetHidden(&hidden) 
editable := true
authenticationAttributeCollectionInputConfiguration3.SetEditable(&editable) 
writeToDirectory := true
authenticationAttributeCollectionInputConfiguration3.SetWriteToDirectory(&writeToDirectory) 
required := true
authenticationAttributeCollectionInputConfiguration3.SetRequired(&required) 
validationRegEx := "^.*"
authenticationAttributeCollectionInputConfiguration3.SetValidationRegEx(&validationRegEx) 


authenticationAttributeCollectionOptionConfiguration := graphmodels.NewAuthenticationAttributeCollectionOptionConfiguration()
label := "Rock music"
authenticationAttributeCollectionOptionConfiguration.SetLabel(&label) 
value := "Rock"
authenticationAttributeCollectionOptionConfiguration.SetValue(&value) 
authenticationAttributeCollectionOptionConfiguration1 := graphmodels.NewAuthenticationAttributeCollectionOptionConfiguration()
label := "Country music"
authenticationAttributeCollectionOptionConfiguration1.SetLabel(&label) 
value := "Country"
authenticationAttributeCollectionOptionConfiguration1.SetValue(&value) 

options := []graphmodels.AuthenticationAttributeCollectionOptionConfigurationable {
	authenticationAttributeCollectionOptionConfiguration,
	authenticationAttributeCollectionOptionConfiguration1,
}
authenticationAttributeCollectionInputConfiguration3.SetOptions(options)

inputs := []graphmodels.AuthenticationAttributeCollectionInputConfigurationable {
	authenticationAttributeCollectionInputConfiguration,
	authenticationAttributeCollectionInputConfiguration1,
	authenticationAttributeCollectionInputConfiguration2,
	authenticationAttributeCollectionInputConfiguration3,
}
authenticationAttributeCollectionPageViewConfiguration.SetInputs(inputs)

views := []graphmodels.AuthenticationAttributeCollectionPageViewConfigurationable {
	authenticationAttributeCollectionPageViewConfiguration,
}
attributeCollectionPage.SetViews(views)
onAttributeCollection.SetAttributeCollectionPage(attributeCollectionPage)
requestBody.SetOnAttributeCollection(onAttributeCollection)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
authenticationEventsFlows, err := graphClient.Identity().AuthenticationEventsFlows().ByAuthenticationEventsFlowId("authenticationEventsFlow-id").Patch(context.Background(), requestBody, nil)


```