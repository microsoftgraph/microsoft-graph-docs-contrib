
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var source = new AttributeMappingSource
{
};

var attributeMappings = new AttributeMapping
{
	Source = source,
	TargetAttributeName = "userName",
};

var attributeMappingsList = new List<AttributeMapping>();
attributeMappingsList.Add( attributeMappings );

var objectMappings = new ObjectMapping
{
	SourceObjectName = "User",
	TargetObjectName = "User",
	AttributeMappings = attributeMappingsList,
};

var objectMappingsList = new List<ObjectMapping>();
objectMappingsList.Add( objectMappings );

var synchronizationRules = new SynchronizationRule
{
	Name = "USER_TO_USER",
	SourceDirectoryName = "Azure Active Directory",
	TargetDirectoryName = "Salesforce",
	ObjectMappings = objectMappingsList,
};

var synchronizationRulesList = new List<SynchronizationRule>();
synchronizationRulesList.Add( synchronizationRules );

var directories = new DirectoryDefinition
{
	Name = "Salesforce",
};

var attributes = new AttributeDefinition
{
	Name = "userPrincipalName",
	Type = AttributeType.String,
};

var attributesList = new List<AttributeDefinition>();
attributesList.Add( attributes );

var objects = new ObjectDefinition
{
	Name = "User",
	Attributes = attributesList,
};

var objectsList = new List<ObjectDefinition>();
objectsList.Add( objects );

var _directories = new DirectoryDefinition
{
	Name = "Azure Active Directory",
	Objects = objectsList,
};

var directoriesList = new List<DirectoryDefinition>();
directoriesList.Add( _directories );
directoriesList.Add( directories );

var synchronizationSchema = new SynchronizationSchema
{
	Directories = directoriesList,
	SynchronizationRules = synchronizationRulesList,
};

await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs["{jobId}"].Schema
	.Request()
	.PutAsync(synchronizationSchema);

```