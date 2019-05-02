
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var actions = new MessageRuleActions
{
	MarkImportance = Importance.High,
};

var messageRule = new MessageRule
{
	DisplayName = "Important from partner",
	Actions = actions,
};

await graphClient.Me.MailFolders["inbox"].MessageRules["AQAAAJ5dZqA="]
	.Request()
	.UpdateAsync(messageRule);

```