
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emailAddress = new EmailAddress
{
	Name = "Alex Wilbur",
	Address = "AlexW@contoso.onmicrosoft.com",
};

var forwardTo = new Recipient
{
	EmailAddress = emailAddress,
};

var forwardToList = new List<Recipient>();
forwardToList.Add( forwardTo );

var actions = new MessageRuleActions
{
	ForwardTo = forwardToList,
	StopProcessingRules = true,
};

var senderContainsList = new List<String>();
senderContainsList.Add( "adele" );

var conditions = new MessageRulePredicates
{
	SenderContains = senderContainsList,
};

var messageRule = new MessageRule
{
	DisplayName = "From partner",
	Sequence = 2,
	IsEnabled = true,
	Conditions = conditions,
	Actions = actions,
};

await graphClient.Me.MailFolders["inbox"].MessageRules
	.Request()
	.AddAsync(messageRule);

```