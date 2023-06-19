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
displayName := "Woodgrove User Flow 2"
requestBody.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
onAuthenticationMethodLoadStart := graphmodels.New()


 := graphmodels.New()
id := "EmailPassword-OAUTH"
.SetId(&id) 
 := graphmodels.New()
id := "Google-OAUTH"
.SetId(&id) 
 := graphmodels.New()
id := "Facebook-OAUTH"
.SetId(&id) 

	identityProviders := []graphmodels.Objectable {
		,
		,
		,

	}
	onAuthenticationMethodLoadStart.SetIdentityProviders(identityProviders)
	requestBody.SetOnAuthenticationMethodLoadStart(onAuthenticationMethodLoadStart)
onInteractiveAuthFlowStart := graphmodels.New()
	isSignUpAllowed := true
onInteractiveAuthFlowStart.SetIsSignUpAllowed(&isSignUpAllowed) 
	requestBody.SetOnInteractiveAuthFlowStart(onInteractiveAuthFlowStart)
onAttributeCollection := graphmodels.New()


 := graphmodels.New()
id := "email"
.SetId(&id) 
displayName := "Email Address"
.SetDisplayName(&displayName) 
description := "Email address of the user"
.SetDescription(&description) 
userFlowAttributeType := "builtIn"
.SetUserFlowAttributeType(&userFlowAttributeType) 
dataType := "string"
.SetDataType(&dataType) 
 := graphmodels.New()
id := "displayName"
.SetId(&id) 
displayName := "Display Name"
.SetDisplayName(&displayName) 
description := "Display Name of the User."
.SetDescription(&description) 
userFlowAttributeType := "builtIn"
.SetUserFlowAttributeType(&userFlowAttributeType) 
dataType := "string"
.SetDataType(&dataType) 
 := graphmodels.New()
id := "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor"
.SetId(&id) 
displayName := "Favorite color"
.SetDisplayName(&displayName) 
description := "what is your favorite color"
.SetDescription(&description) 
userFlowAttributeType := "custom"
.SetUserFlowAttributeType(&userFlowAttributeType) 
dataType := "string"
.SetDataType(&dataType) 

	attributes := []graphmodels.Objectable {
		,
		,
		,

	}
	onAttributeCollection.SetAttributes(attributes)
attributeCollectionPage := graphmodels.New()


 := graphmodels.New()


 := graphmodels.New()
attribute := "email"
.SetAttribute(&attribute) 
label := "Email Address"
.SetLabel(&label) 
inputType := "Text"
.SetInputType(&inputType) 
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
 := graphmodels.New()
attribute := "displayName"
.SetAttribute(&attribute) 
label := "Display Name"
.SetLabel(&label) 
inputType := "text"
.SetInputType(&inputType) 
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
 := graphmodels.New()
attribute := "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor"
.SetAttribute(&attribute) 
label := "Favorite color"
.SetLabel(&label) 
inputType := "text"
.SetInputType(&inputType) 
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

result, err := graphClient.Identity().AuthenticationEventsFlows().Post(context.Background(), requestBody, nil)


```