---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ManagedAppPolicyDeploymentSummary
{
	OdataType = "#microsoft.graph.managedAppPolicyDeploymentSummary",
	DisplayName = "Display Name value",
	ConfigurationDeployedUserCount = 14,
	LastRefreshTime = DateTimeOffset.Parse("2017-01-01T00:01:30.1240368-08:00"),
	ConfigurationDeploymentSummaryPerApp = new List<ManagedAppPolicyDeploymentSummaryPerApp>
	{
		new ManagedAppPolicyDeploymentSummaryPerApp
		{
			OdataType = "microsoft.graph.managedAppPolicyDeploymentSummaryPerApp",
			MobileAppIdentifier = new AndroidMobileAppIdentifier
			{
				OdataType = "microsoft.graph.androidMobileAppIdentifier",
				PackageId = "Package Id value",
			},
			ConfigurationAppliedUserCount = 13,
		},
	},
	Version = "Version value",
};
var result = await graphClient.DeviceAppManagement.IosManagedAppProtections["{iosManagedAppProtection-id}"].DeploymentSummary.PatchAsync(requestBody);


```