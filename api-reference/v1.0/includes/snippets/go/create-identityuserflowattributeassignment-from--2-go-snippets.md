---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewIdentityUserFlowAttributeAssignment()
isOptional := false
requestBody.SetIsOptional(&isOptional)
requiresVerification := false
requestBody.SetRequiresVerification(&requiresVerification)
userInputType := "TextBox"
requestBody.SetUserInputType(&userInputType)
displayName := "Shoe size"
requestBody.SetDisplayName(&displayName)
requestBody.SetUserAttributeValues( []UserAttributeValuesItem {
}
userAttribute := msgraphsdk.NewIdentityUserFlowAttribute()
requestBody.SetUserAttribute(userAttribute)
userAttribute.SetAdditionalData(map[string]interface{}{
	"id": "extension_guid_shoeSize",
}
options := &msgraphsdk.UserAttributeAssignmentsRequestBuilderPostOptions{
	Body: requestBody,
}
b2xIdentityUserFlowId := "b2xIdentityUserFlow-id"
result, err := graphClient.Identity().B2xUserFlowsById(&b2xIdentityUserFlowId).UserAttributeAssignments().Post(options);


```