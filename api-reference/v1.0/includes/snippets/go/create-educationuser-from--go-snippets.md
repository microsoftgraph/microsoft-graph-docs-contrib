---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEducationUser()
"@odata.type" := "#microsoft.graph.educationUser"
requestBody.Set"@odata.type"(&"@odata.type") 
primaryRole := graphmodels.STRING_EDUCATIONUSERROLE 
requestBody.SetPrimaryRole(&primaryRole) 
middleName := "String"
requestBody.SetMiddleName(&middleName) 
externalSource := graphmodels.STRING_EDUCATIONEXTERNALSOURCE 
requestBody.SetExternalSource(&externalSource) 
externalSourceDetail := "String"
requestBody.SetExternalSourceDetail(&externalSourceDetail) 
residenceAddress := graphmodels.NewPhysicalAddress()
"@odata.type" := "microsoft.graph.physicalAddress"
residenceAddress.Set"@odata.type"(&"@odata.type") 
requestBody.SetResidenceAddress(residenceAddress)
mailingAddress := graphmodels.NewPhysicalAddress()
"@odata.type" := "microsoft.graph.physicalAddress"
mailingAddress.Set"@odata.type"(&"@odata.type") 
requestBody.SetMailingAddress(mailingAddress)
student := graphmodels.NewEducationStudent()
"@odata.type" := "microsoft.graph.educationStudent"
student.Set"@odata.type"(&"@odata.type") 
requestBody.SetStudent(student)
teacher := graphmodels.NewEducationTeacher()
"@odata.type" := "microsoft.graph.educationTeacher"
teacher.Set"@odata.type"(&"@odata.type") 
requestBody.SetTeacher(teacher)
createdBy := graphmodels.NewIdentitySet()
"@odata.type" := "microsoft.graph.identitySet"
createdBy.Set"@odata.type"(&"@odata.type") 
requestBody.SetCreatedBy(createdBy)
accountEnabled := "Boolean"
requestBody.SetAccountEnabled(&accountEnabled) 


assignedLicense := graphmodels.NewAssignedLicense()
additionalData := map[string]interface{}{
	"@odata.type" : "microsoft.graph.assignedLicense", 
}
assignedLicense.SetAdditionalData(additionalData)

assignedLicenses := []graphmodels.AssignedLicenseable {
	assignedLicense,

}
requestBody.SetAssignedLicenses(assignedLicenses)


assignedPlan := graphmodels.NewAssignedPlan()
additionalData := map[string]interface{}{
	"@odata.type" : "microsoft.graph.assignedPlan", 
}
assignedPlan.SetAdditionalData(additionalData)

assignedPlans := []graphmodels.AssignedPlanable {
	assignedPlan,

}
requestBody.SetAssignedPlans(assignedPlans)
businessPhones := []string {
	"String",

}
requestBody.SetBusinessPhones(businessPhones)
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
passwordProfile := graphmodels.NewPasswordProfile()
"@odata.type" := "microsoft.graph.passwordProfile"
passwordProfile.Set"@odata.type"(&"@odata.type") 
requestBody.SetPasswordProfile(passwordProfile)
officeLocation := "String"
requestBody.SetOfficeLocation(&officeLocation) 
preferredLanguage := "String"
requestBody.SetPreferredLanguage(&preferredLanguage) 


provisionedPlan := graphmodels.NewProvisionedPlan()
additionalData := map[string]interface{}{
	"@odata.type" : "microsoft.graph.provisionedPlan", 
}
provisionedPlan.SetAdditionalData(additionalData)

provisionedPlans := []graphmodels.ProvisionedPlanable {
	provisionedPlan,

}
requestBody.SetProvisionedPlans(provisionedPlans)
refreshTokensValidFromDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
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
onPremisesInfo := graphmodels.NewEducationOnPremisesInfo()
"@odata.type" := "microsoft.graph.educationOnPremisesInfo"
onPremisesInfo.Set"@odata.type"(&"@odata.type") 
requestBody.SetOnPremisesInfo(onPremisesInfo)

result, err := graphClient.Education().Users().Post(requestBody)


```