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
displayName := "Woodgrove Drive User Flow"
requestBody.SetDisplayName(&displayName) 
onAuthenticationMethodLoadStart := graphmodels.NewOnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp()


identityProviderBase := graphmodels.NewIdentityProviderBase()
id := "EmailPassword-OAUTH"
identityProviderBase.SetId(&id) 

identityProviders := []graphmodels.IdentityProviderBaseable {
	identityProviderBase,
}
onAuthenticationMethodLoadStart.SetIdentityProviders(identityProviders)
requestBody.SetOnAuthenticationMethodLoadStart(onAuthenticationMethodLoadStart)
onInteractiveAuthFlowStart := graphmodels.NewOnInteractiveAuthFlowStartExternalUsersSelfServiceSignUp()
isSignUpAllowed := true
onInteractiveAuthFlowStart.SetIsSignUpAllowed(&isSignUpAllowed) 
requestBody.SetOnInteractiveAuthFlowStart(onInteractiveAuthFlowStart)
onAttributeCollection := graphmodels.NewOnAttributeCollectionExternalUsersSelfServiceSignUp()


identityUserFlowAttribute := graphmodels.NewIdentityUserFlowAttribute()
id := "email"
identityUserFlowAttribute.SetId(&id) 
displayName := "Email Address"
identityUserFlowAttribute.SetDisplayName(&displayName) 
description := "Email address of the user"
identityUserFlowAttribute.SetDescription(&description) 
userFlowAttributeType := graphmodels.BUILTIN_IDENTITYUSERFLOWATTRIBUTETYPE 
identityUserFlowAttribute.SetUserFlowAttributeType(&userFlowAttributeType) 
dataType := graphmodels.STRING_IDENTITYUSERFLOWATTRIBUTEDATATYPE 
identityUserFlowAttribute.SetDataType(&dataType) 
identityUserFlowAttribute1 := graphmodels.NewIdentityUserFlowAttribute()
id := "displayName"
identityUserFlowAttribute1.SetId(&id) 
displayName := "Display Name"
identityUserFlowAttribute1.SetDisplayName(&displayName) 
description := "Display Name of the User."
identityUserFlowAttribute1.SetDescription(&description) 
userFlowAttributeType := graphmodels.BUILTIN_IDENTITYUSERFLOWATTRIBUTETYPE 
identityUserFlowAttribute1.SetUserFlowAttributeType(&userFlowAttributeType) 
dataType := graphmodels.STRING_IDENTITYUSERFLOWATTRIBUTEDATATYPE 
identityUserFlowAttribute1.SetDataType(&dataType) 

attributes := []graphmodels.IdentityUserFlowAttributeable {
	identityUserFlowAttribute,
	identityUserFlowAttribute1,
}
onAttributeCollection.SetAttributes(attributes)
attributeCollectionPage := graphmodels.NewAuthenticationAttributeCollectionPage()


authenticationAttributeCollectionPageViewConfiguration := graphmodels.NewAuthenticationAttributeCollectionPageViewConfiguration()


authenticationAttributeCollectionInputConfiguration := graphmodels.NewAuthenticationAttributeCollectionInputConfiguration()
attribute := "email"
authenticationAttributeCollectionInputConfiguration.SetAttribute(&attribute) 
label := "Email Address"
authenticationAttributeCollectionInputConfiguration.SetLabel(&label) 
inputType := graphmodels.TEXT_AUTHENTICATIONATTRIBUTECOLLECTIONINPUTTYPE 
authenticationAttributeCollectionInputConfiguration.SetInputType(&inputType) 
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
authenticationAttributeCollectionInputConfiguration1 := graphmodels.NewAuthenticationAttributeCollectionInputConfiguration()
attribute := "displayName"
authenticationAttributeCollectionInputConfiguration1.SetAttribute(&attribute) 
label := "Display Name"
authenticationAttributeCollectionInputConfiguration1.SetLabel(&label) 
inputType := graphmodels.TEXT_AUTHENTICATIONATTRIBUTECOLLECTIONINPUTTYPE 
authenticationAttributeCollectionInputConfiguration1.SetInputType(&inputType) 
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

inputs := []graphmodels.AuthenticationAttributeCollectionInputConfigurationable {
	authenticationAttributeCollectionInputConfiguration,
	authenticationAttributeCollectionInputConfiguration1,
}
authenticationAttributeCollectionPageViewConfiguration.SetInputs(inputs)

views := []graphmodels.AuthenticationAttributeCollectionPageViewConfigurationable {
	authenticationAttributeCollectionPageViewConfiguration,
}
attributeCollectionPage.SetViews(views)
onAttributeCollection.SetAttributeCollectionPage(attributeCollectionPage)
requestBody.SetOnAttributeCollection(onAttributeCollection)

result, err := graphClient.Identity().AuthenticationEventsFlows().Post(context.Background(), requestBody, nil)


```