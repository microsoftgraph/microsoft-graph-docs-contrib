---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewIdentityUserFlowAttributeAssignment()
isOptional := false
requestBody.SetIsOptional(&isOptional) 
requiresVerification := false
requestBody.SetRequiresVerification(&requiresVerification) 
userInputType := graphmodels.TEXTBOX_IDENTITYUSERFLOWATTRIBUTEINPUTTYPE 
requestBody.SetUserInputType(&userInputType) 
displayName := "Shoe size"
requestBody.SetDisplayName(&displayName) 
userAttributeValues := []graphmodels.UserAttributeValuesItemable {

}
requestBody.SetUserAttributeValues(userAttributeValues)
userAttribute := graphmodels.NewuserAttribute()
id := "extension_guid_shoeSize"
userAttribute.SetId(&id) 
requestBody.SetUserAttribute(userAttribute)

result, err := graphClient.Identity().B2cUserFlowsById("b2cIdentityUserFlow-id").UserAttributeAssignments().Post(requestBody)


```