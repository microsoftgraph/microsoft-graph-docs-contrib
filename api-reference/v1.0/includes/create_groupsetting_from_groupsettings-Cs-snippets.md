
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var values = new SettingValue
{
	Name = "name-value",
	Value = "value-value",
};

var valuesList = new List<SettingValue>();
valuesList.Add( values );

var groupSetting = new GroupSetting
{
	DisplayName = "displayName-value",
	TemplateId = "templateId-value",
	Values = valuesList,
};

await graphClient.GroupSettings
	.Request()
	.AddAsync(groupSetting);

```