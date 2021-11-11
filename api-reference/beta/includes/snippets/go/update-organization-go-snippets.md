---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewOrganization()
requestBody.SetMarketingNotificationEmails( []String {
	"marketing@contoso.com",
}
privacyProfile := msgraphsdk.NewPrivacyProfile()
requestBody.SetPrivacyProfile(privacyProfile)
contactEmail := "alice@contoso.com"
privacyProfile.SetContactEmail(&contactEmail)
statementUrl := "https://contoso.com/privacyStatement"
privacyProfile.SetStatementUrl(&statementUrl)
requestBody.SetSecurityComplianceNotificationMails( []String {
	"security@contoso.com",
}
requestBody.SetSecurityComplianceNotificationPhones( []String {
	"(123) 456-7890",
}
requestBody.SetTechnicalNotificationMails( []String {
	"tech@contoso.com",
}
options := &msgraphsdk.OrganizationRequestBuilderPatchOptions{
	Body: requestBody,
}
organizationId := "organization-id"
graphClient.OrganizationById(&organizationId).Patch(options)


```