---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewOrganization()
marketingNotificationEmails := []String {
	"marketing@contoso.com",

}
requestBody.SetMarketingNotificationEmails(marketingNotificationEmails)
privacyProfile := graphmodels.NewPrivacyProfile()
contactEmail := "alice@contoso.com"
privacyProfile.SetContactEmail(&contactEmail) 
statementUrl := "https://contoso.com/privacyStatement"
privacyProfile.SetStatementUrl(&statementUrl) 
requestBody.SetPrivacyProfile(privacyProfile)
securityComplianceNotificationMails := []String {
	"security@contoso.com",

}
requestBody.SetSecurityComplianceNotificationMails(securityComplianceNotificationMails)
securityComplianceNotificationPhones := []String {
	"(123) 456-7890",

}
requestBody.SetSecurityComplianceNotificationPhones(securityComplianceNotificationPhones)
technicalNotificationMails := []String {
	"tech@contoso.com",

}
requestBody.SetTechnicalNotificationMails(technicalNotificationMails)

graphClient.OrganizationById("organization-id").Patch(requestBody)


```