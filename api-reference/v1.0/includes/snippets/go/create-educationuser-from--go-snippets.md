---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewEducationUser()
primaryRole := graphmodels.STRING_EDUCATIONUSERROLE 
requestBody.SetPrimaryRole(&primaryRole) 
middleName := "String"
requestBody.SetMiddleName(&middleName) 
externalSource := graphmodels.STRING_EDUCATIONEXTERNALSOURCE 
requestBody.SetExternalSource(&externalSource) 
externalSourceDetail := "String"
requestBody.SetExternalSourceDetail(&externalSourceDetail) 
residenceAddress := graphmodels.NewPhysicalAddress()
requestBody.SetResidenceAddress(residenceAddress)
mailingAddress := graphmodels.NewPhysicalAddress()
requestBody.SetMailingAddress(mailingAddress)
student := graphmodels.NewEducationStudent()
requestBody.SetStudent(student)
teacher := graphmodels.NewEducationTeacher()
requestBody.SetTeacher(teacher)
createdBy := graphmodels.NewIdentitySet()
requestBody.SetCreatedBy(createdBy)
accountEnabled := boolean
requestBody.SetAccountEnabled(&accountEnabled) 


assignedLicense := graphmodels.NewAssignedLicense()

assignedLicenses := []graphmodels.AssignedLicenseable {
	assignedLicense,
}
requestBody.SetAssignedLicenses(assignedLicenses)


assignedPlan := graphmodels.NewAssignedPlan()

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
requestBody.SetPasswordProfile(passwordProfile)
officeLocation := "String"
requestBody.SetOfficeLocation(&officeLocation) 
preferredLanguage := "String"
requestBody.SetPreferredLanguage(&preferredLanguage) 


provisionedPlan := graphmodels.NewProvisionedPlan()

provisionedPlans := []graphmodels.ProvisionedPlanable {
	provisionedPlan,
}
requestBody.SetProvisionedPlans(provisionedPlans)
refreshTokensValidFromDateTime , err := time.Parse(time.RFC3339, "String (timestamp)")
requestBody.SetRefreshTokensValidFromDateTime(&refreshTokensValidFromDateTime) 
showInAddressList := boolean
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
requestBody.SetOnPremisesInfo(onPremisesInfo)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
users, err := graphClient.Education().Users().Post(context.Background(), requestBody, nil)


```