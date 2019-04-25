
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var values = new SettingValue
{
	Name = "EnableGroupCreation",
	Value = "True",
};

var _values = new SettingValue
{
	Name = "ClassificationList",
	Value = "",
};

var __values = new SettingValue
{
	Name = "UsageGuidelinesUrl",
	Value = "",
};

var ___values = new SettingValue
{
	Name = "AllowToAddGuests",
	Value = "True",
};

var ____values = new SettingValue
{
	Name = "GroupCreationAllowedGroupId",
	Value = "62e90394-69f5-4237-9190-012177145e10",
};

var _____values = new SettingValue
{
	Name = "GuestUsageGuidelinesUrl",
	Value = "",
};

var ______values = new SettingValue
{
	Name = "AllowGuestsToAccessGroups",
	Value = "True",
};

var _______values = new SettingValue
{
	Name = "AllowGuestsToBeGroupOwner",
	Value = "False",
};

var ________values = new SettingValue
{
	Name = "PrefixSuffixNamingRequirement",
	Value = "",
};

var _________values = new SettingValue
{
	Name = "DefaultClassification",
	Value = "",
};

var __________values = new SettingValue
{
	Name = "ClassificationDescriptions",
	Value = "",
};

var ___________values = new SettingValue
{
	Name = "EnableMSStandardBlockedWords",
	Value = "False",
};

var ____________values = new SettingValue
{
	Name = "CustomBlockedWordsList",
	Value = "",
};

var valuesList = new List<SettingValue>();
valuesList.Add( ____________values );
valuesList.Add( ___________values );
valuesList.Add( __________values );
valuesList.Add( _________values );
valuesList.Add( ________values );
valuesList.Add( _______values );
valuesList.Add( ______values );
valuesList.Add( _____values );
valuesList.Add( ____values );
valuesList.Add( ___values );
valuesList.Add( __values );
valuesList.Add( _values );
valuesList.Add( values );

var groupSetting = new GroupSetting
{
	DisplayName = "displayName-value",
	TemplateId = "templateId-value",
	Values = valuesList,
};

await graphClient.GroupSettings["{id}"]
	.Request()
	.UpdateAsync(groupSetting);

```