
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var properties = new ExtensionSchemaProperty
{
	Name = "additional-name-value",
	Type = "additional-type-value",
};

var _properties = new ExtensionSchemaProperty
{
	Name = "new-name-value",
	Type = "new-type-value",
};

var propertiesList = new List<ExtensionSchemaProperty>();
propertiesList.Add( _properties );
propertiesList.Add( properties );

var schemaExtension = new SchemaExtension
{
	Properties = propertiesList,
};

await graphClient.SchemaExtensions["{id}"]
	.Request()
	.UpdateAsync(schemaExtension);

```