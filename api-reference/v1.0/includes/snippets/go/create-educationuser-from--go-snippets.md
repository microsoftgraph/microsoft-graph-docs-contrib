---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewEducationUser()
primaryRole := "String"
requestBody.SetPrimaryRole(&primaryRole)
middleName := "String"
requestBody.SetMiddleName(&middleName)
externalSource := "String"
requestBody.SetExternalSource(&externalSource)
externalSourceDetail := "String"
requestBody.SetExternalSourceDetail(&externalSourceDetail)
residenceAddress := msgraphsdk.NewPhysicalAddress()
requestBody.SetResidenceAddress(residenceAddress)
residenceAddress.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.physicalAddress",
}
mailingAddress := msgraphsdk.NewPhysicalAddress()
requestBody.SetMailingAddress(mailingAddress)
mailingAddress.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.physicalAddress",
}
student := msgraphsdk.NewEducationStudent()
requestBody.SetStudent(student)
student.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.educationStudent",
}
teacher := msgraphsdk.NewEducationTeacher()
requestBody.SetTeacher(teacher)
teacher.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.educationTeacher",
}
createdBy := msgraphsdk.NewIdentitySet()
requestBody.SetCreatedBy(createdBy)
createdBy.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.identitySet",
}
accountEnabled := "Boolean"
requestBody.SetAccountEnabled(&accountEnabled)
requestBody.SetAssignedLicenses( []AssignedLicense {
	msgraphsdk.NewAssignedLicense(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "microsoft.graph.assignedLicense",
	}
}
requestBody.SetAssignedPlans( []AssignedPlan {
	msgraphsdk.NewAssignedPlan(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "microsoft.graph.assignedPlan",
	}
}
requestBody.SetBusinessPhones( []String {
	"String",
}
department := "String"
requestBody.SetDepartment(&department)
displayName := "String"
requestBody.SetDisplayName(&displayName)
givenName := "String"
requestBody.SetGivenName(&givenName)
mail := "String"
requestBody.SetMail(&mail)
mailNickname := "String"
requestBody.SetMailNickname(&mailNickname)
mobilePhone := "String"
requestBody.SetMobilePhone(&mobilePhone)
passwordPolicies := "String"
requestBody.SetPasswordPolicies(&passwordPolicies)
passwordProfile := msgraphsdk.NewPasswordProfile()
requestBody.SetPasswordProfile(passwordProfile)
passwordProfile.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.passwordProfile",
}
officeLocation := "String"
requestBody.SetOfficeLocation(&officeLocation)
preferredLanguage := "String"
requestBody.SetPreferredLanguage(&preferredLanguage)
requestBody.SetProvisionedPlans( []ProvisionedPlan {
	msgraphsdk.NewProvisionedPlan(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "microsoft.graph.provisionedPlan",
	}
}
refreshTokensValidFromDateTime, err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetRefreshTokensValidFromDateTime(&refreshTokensValidFromDateTime)
showInAddressList := "Boolean"
requestBody.SetShowInAddressList(&showInAddressList)
surname := "String"
requestBody.SetSurname(&surname)
usageLocation := "String"
requestBody.SetUsageLocation(&usageLocation)
userPrincipalName := "String"
requestBody.SetUserPrincipalName(&userPrincipalName)
userType := "String"
requestBody.SetUserType(&userType)
onPremisesInfo := msgraphsdk.NewEducationOnPremisesInfo()
requestBody.SetOnPremisesInfo(onPremisesInfo)
onPremisesInfo.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.educationOnPremisesInfo",
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.educationUser",
}
options := &msgraphsdk.UsersRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Education().Users().Post(options)


```