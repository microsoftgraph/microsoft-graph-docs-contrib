
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tagsList = new List<String>();

var malwareFamilyNamesList = new List<String>();

var killChainList = new List<String>();

var activityGroupNamesList = new List<String>();

var value = new TiIndicator
{
	ActivityGroupNames = activityGroupNamesList,
	Confidence = 0,
	Description = "This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.",
	ExpirationDateTime = "2019-03-02T00:44:03.1748779+03:00",
	ExternalId = "Test--8586509942423126760MS164-1",
	FileHashType = FileHashType.Sha256,
	FileHashValue = "1796b433950990b28d6a22456c9d2b58ced1bdfcdf5f16f7e39d6b9bdca4213b",
	KillChain = killChainList,
	MalwareFamilyNames = malwareFamilyNamesList,
	Severity = 0,
	Tags = tagsList,
	TargetProduct = "Azure Sentinel",
	ThreatType = "WatchList",
	TlpLevel = TlpLevel.Green,
};

var tagsList = new List<String>();

var malwareFamilyNamesList = new List<String>();

var killChainList = new List<String>();

var activityGroupNamesList = new List<String>();

var _value = new TiIndicator
{
	ActivityGroupNames = activityGroupNamesList,
	Confidence = 0,
	Description = "This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.",
	ExpirationDateTime = "2019-03-02T00:44:03.1668987+03:00",
	ExternalId = "Test--8586509942423126760MS164-0",
	FileHashType = FileHashType.Sha256,
	FileHashValue = "b555c45c5b1b01304217e72118d6ca1b14b7013644a078273cea27bbdc1cf9d6",
	KillChain = killChainList,
	MalwareFamilyNames = malwareFamilyNamesList,
	Severity = 0,
	Tags = tagsList,
	TargetProduct = "Azure Sentinel",
	ThreatType = "WatchList",
	TlpLevel = TlpLevel.Green,
};

var valueList = new List<TiIndicator>();
valueList.Add( _value );
valueList.Add( value );

await graphClient.Security.TiIndicators
	.SubmitTiIndicators(valueList)
	.Request()
	.PostAsync()

```