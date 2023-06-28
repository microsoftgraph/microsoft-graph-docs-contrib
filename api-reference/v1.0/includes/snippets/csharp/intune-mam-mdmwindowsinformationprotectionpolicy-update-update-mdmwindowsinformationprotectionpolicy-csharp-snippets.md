---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new MdmWindowsInformationProtectionPolicy
{
	OdataType = "#microsoft.graph.mdmWindowsInformationProtectionPolicy",
	DisplayName = "Display Name value",
	Description = "Description value",
	Version = "Version value",
	EnforcementLevel = WindowsInformationProtectionEnforcementLevel.EncryptAndAuditOnly,
	EnterpriseDomain = "Enterprise Domain value",
	EnterpriseProtectedDomainNames = new List<WindowsInformationProtectionResourceCollection>
	{
		new WindowsInformationProtectionResourceCollection
		{
			OdataType = "microsoft.graph.windowsInformationProtectionResourceCollection",
			DisplayName = "Display Name value",
			Resources = new List<string>
			{
				"Resources value",
			},
		},
	},
	ProtectionUnderLockConfigRequired = true,
	DataRecoveryCertificate = new WindowsInformationProtectionDataRecoveryCertificate
	{
		OdataType = "microsoft.graph.windowsInformationProtectionDataRecoveryCertificate",
		SubjectName = "Subject Name value",
		Description = "Description value",
		ExpirationDateTime = DateTimeOffset.Parse("2016-12-31T23:57:57.2481234-08:00"),
		Certificate = Convert.FromBase64String("Y2VydGlmaWNhdGU="),
	},
	RevokeOnUnenrollDisabled = true,
	RightsManagementServicesTemplateId = Guid.Parse("abf7b16f-b16f-abf7-6fb1-f7ab6fb1f7ab"),
	AzureRightsManagementServicesAllowed = true,
	IconsVisible = true,
	ProtectedApps = new List<WindowsInformationProtectionApp>
	{
		new WindowsInformationProtectionStoreApp
		{
			OdataType = "microsoft.graph.windowsInformationProtectionStoreApp",
			DisplayName = "Display Name value",
			Description = "Description value",
			PublisherName = "Publisher Name value",
			ProductName = "Product Name value",
			Denied = true,
		},
	},
	ExemptApps = new List<WindowsInformationProtectionApp>
	{
		new WindowsInformationProtectionStoreApp
		{
			OdataType = "microsoft.graph.windowsInformationProtectionStoreApp",
			DisplayName = "Display Name value",
			Description = "Description value",
			PublisherName = "Publisher Name value",
			ProductName = "Product Name value",
			Denied = true,
		},
	},
	EnterpriseNetworkDomainNames = new List<WindowsInformationProtectionResourceCollection>
	{
		new WindowsInformationProtectionResourceCollection
		{
			OdataType = "microsoft.graph.windowsInformationProtectionResourceCollection",
			DisplayName = "Display Name value",
			Resources = new List<string>
			{
				"Resources value",
			},
		},
	},
	EnterpriseProxiedDomains = new List<WindowsInformationProtectionProxiedDomainCollection>
	{
		new WindowsInformationProtectionProxiedDomainCollection
		{
			OdataType = "microsoft.graph.windowsInformationProtectionProxiedDomainCollection",
			DisplayName = "Display Name value",
			ProxiedDomains = new List<ProxiedDomain>
			{
				new ProxiedDomain
				{
					OdataType = "microsoft.graph.proxiedDomain",
					IpAddressOrFQDN = "Ip Address Or FQDN value",
					Proxy = "Proxy value",
				},
			},
		},
	},
	EnterpriseIPRanges = new List<WindowsInformationProtectionIPRangeCollection>
	{
		new WindowsInformationProtectionIPRangeCollection
		{
			OdataType = "microsoft.graph.windowsInformationProtectionIPRangeCollection",
			DisplayName = "Display Name value",
			Ranges = new List<IpRange>
			{
				new IPv6Range
				{
					OdataType = "microsoft.graph.iPv6Range",
					LowerAddress = "Lower Address value",
					UpperAddress = "Upper Address value",
				},
			},
		},
	},
	EnterpriseIPRangesAreAuthoritative = true,
	EnterpriseProxyServers = new List<WindowsInformationProtectionResourceCollection>
	{
		new WindowsInformationProtectionResourceCollection
		{
			OdataType = "microsoft.graph.windowsInformationProtectionResourceCollection",
			DisplayName = "Display Name value",
			Resources = new List<string>
			{
				"Resources value",
			},
		},
	},
	EnterpriseInternalProxyServers = new List<WindowsInformationProtectionResourceCollection>
	{
		new WindowsInformationProtectionResourceCollection
		{
			OdataType = "microsoft.graph.windowsInformationProtectionResourceCollection",
			DisplayName = "Display Name value",
			Resources = new List<string>
			{
				"Resources value",
			},
		},
	},
	EnterpriseProxyServersAreAuthoritative = true,
	NeutralDomainResources = new List<WindowsInformationProtectionResourceCollection>
	{
		new WindowsInformationProtectionResourceCollection
		{
			OdataType = "microsoft.graph.windowsInformationProtectionResourceCollection",
			DisplayName = "Display Name value",
			Resources = new List<string>
			{
				"Resources value",
			},
		},
	},
	IndexingEncryptedStoresOrItemsBlocked = true,
	SmbAutoEncryptedFileExtensions = new List<WindowsInformationProtectionResourceCollection>
	{
		new WindowsInformationProtectionResourceCollection
		{
			OdataType = "microsoft.graph.windowsInformationProtectionResourceCollection",
			DisplayName = "Display Name value",
			Resources = new List<string>
			{
				"Resources value",
			},
		},
	},
	IsAssigned = true,
};
var result = await graphClient.DeviceAppManagement.MdmWindowsInformationProtectionPolicies["{mdmWindowsInformationProtectionPolicy-id}"].PatchAsync(requestBody);


```