
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var credentials = new SynchronizationSecretKeyStringValuePair
{
	Key = SynchronizationSecret.Password,
	Value = "password-value",
};

var _credentials = new SynchronizationSecretKeyStringValuePair
{
	Key = SynchronizationSecret.UserName,
	Value = "user@domain.com",
};

var credentialsList = new List<SynchronizationSecretKeyStringValuePair>();
credentialsList.Add( _credentials );
credentialsList.Add( credentials );

await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs["{id}"]
	.ValidateCredentials(applicationIdentifier,templateId,useSavedCredentials,credentialsList)
	.Request()
	.PostAsync()

```