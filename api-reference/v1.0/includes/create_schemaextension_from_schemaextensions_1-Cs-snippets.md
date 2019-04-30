
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var properties = new ExtensionSchemaProperty
{
	Name = "courseType",
	Type = "String",
};

var _properties = new ExtensionSchemaProperty
{
	Name = "courseName",
	Type = "String",
};

var __properties = new ExtensionSchemaProperty
{
	Name = "courseId",
	Type = "Integer",
};

var propertiesList = new List<ExtensionSchemaProperty>();
propertiesList.Add( __properties );
propertiesList.Add( _properties );
propertiesList.Add( properties );

var targetTypesList = new List<String>();
targetTypesList.Add( "Group" );

var schemaExtension = new SchemaExtension
{
	Id = "graphlearn_courses",
	Description = "Graph Learn training courses extensions",
	TargetTypes = targetTypesList,
	Properties = propertiesList,
};

await graphClient.SchemaExtensions
	.Request()
	.AddAsync(schemaExtension);

```