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
displayName := "Woodgrove User Flow 2"
requestBody.SetDisplayName(&displayName) 
onAuthenticationMethodLoadStart := graphmodels.NewOnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp()


identityProviderBase := graphmodels.NewIdentityProviderBase()
id := "EmailPassword-OAUTH"
identityProviderBase.SetId(&id) 
identityProviderBase1 := graphmodels.NewIdentityProviderBase()
id := "Google-OAUTH"
identityProviderBase1.SetId(&id) 
identityProviderBase2 := graphmodels.NewIdentityProviderBase()
id := "Facebook-OAUTH"
identityProviderBase2.SetId(&id) 

identityProviders := []graphmodels.IdentityProviderBaseable {
	identityProviderBase,
	identityProviderBase1,
	identityProviderBase2,
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
identityUserFlowAttribute2 := graphmodels.NewIdentityUserFlowAttribute()
id := "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor"
identityUserFlowAttribute2.SetId(&id) 
displayName := "Favorite color"
identityUserFlowAttribute2.SetDisplayName(&displayName) 
description := "what is your favorite color"
identityUserFlowAttribute2.SetDescription(&description) 
userFlowAttributeType := graphmodels.CUSTOM_IDENTITYUSERFLOWATTRIBUTETYPE 
identityUserFlowAttribute2.SetUserFlowAttributeType(&userFlowAttributeType) 
dataType := graphmodels.STRING_IDENTITYUSERFLOWATTRIBUTEDATATYPE 
identityUserFlowAttribute2.SetDataType(&dataType) 

attributes := []graphmodels.IdentityUserFlowAttributeable {
	identityUserFlowAttribute,
	identityUserFlowAttribute1,
	identityUserFlowAttribute2,
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
authenticationAttributeCollectionInputConfiguration2 := graphmodels.NewAuthenticationAttributeCollectionInputConfiguration()
attribute := "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor"
authenticationAttributeCollectionInputConfiguration2.SetAttribute(&attribute) 
label := "Favorite color"
authenticationAttributeCollectionInputConfiguration2.SetLabel(&label) 
inputType := graphmodels.TEXT_AUTHENTICATIONATTRIBUTECOLLECTIONINPUTTYPE 
authenticationAttributeCollectionInputConfiguration2.SetInputType(&inputType) 
hidden := false
authenticationAttributeCollectionInputConfiguration2.SetHidden(&hidden) 
editable := true
authenticationAttributeCollectionInputConfiguration2.SetEditable(&editable) 
writeToDirectory := true
authenticationAttributeCollectionInputConfiguration2.SetWriteToDirectory(&writeToDirectory) 
required := false
authenticationAttributeCollectionInputConfiguration2.SetRequired(&required) 
validationRegEx := "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$"
authenticationAttributeCollectionInputConfiguration2.SetValidationRegEx(&validationRegEx) 

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

authenticationEventsFlows, err := graphClient.Identity().AuthenticationEventsFlows().Post(context.Background(), requestBody, nil)


```