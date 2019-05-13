
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var properties = new KeyValue
{
	Key = "key-value",
	Value = "value-value",
};

var propertiesList = new List<KeyValue>();
propertiesList.Add( properties );

var addIns = new AddIn
{
	Id = "id-value",
	Type = "type-value",
	Properties = propertiesList,
};

var addInsList = new List<AddIn>();
addInsList.Add( addIns );

var servicePrincipal = new ServicePrincipal
{
	AccountEnabled = true,
	AddIns = addInsList,
	AppDisplayName = "appDisplayName-value",
	AppId = "appId-value",
	AppOwnerOrganizationId = "appOwnerOrganizationId-value",
	AppRoleAssignmentRequired = true,
};

await graphClient.ServicePrincipals["{id}"]
	.Request()
	.UpdateAsync(servicePrincipal);

```