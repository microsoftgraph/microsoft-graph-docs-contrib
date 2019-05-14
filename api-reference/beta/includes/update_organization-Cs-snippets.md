
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var technicalNotificationMailsList = new List<String>();
technicalNotificationMailsList.Add( "tech@contoso.com" );

var securityComplianceNotificationPhonesList = new List<String>();
securityComplianceNotificationPhonesList.Add( "(123) 456-7890" );

var securityComplianceNotificationMailsList = new List<String>();
securityComplianceNotificationMailsList.Add( "security@contoso.com" );

var privacyProfile = new PrivacyProfile
{
	ContactEmail = "alice@contoso.com",
	StatementUrl = "https://contoso.com/privacyStatement",
};

var marketingNotificationEmailsList = new List<String>();
marketingNotificationEmailsList.Add( "marketing@contoso.com" );

var organization = new Organization
{
	MarketingNotificationEmails = marketingNotificationEmailsList,
	PrivacyProfile = privacyProfile,
	SecurityComplianceNotificationMails = securityComplianceNotificationMailsList,
	SecurityComplianceNotificationPhones = securityComplianceNotificationPhonesList,
	TechnicalNotificationMails = technicalNotificationMailsList,
};

await graphClient.Organization["{id}"]
	.Request()
	.UpdateAsync(organization);

```