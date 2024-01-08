---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MdmWindowsInformationProtectionPolicy mdmWindowsInformationProtectionPolicy = new MdmWindowsInformationProtectionPolicy();
mdmWindowsInformationProtectionPolicy.displayName = "Display Name value";
mdmWindowsInformationProtectionPolicy.description = "Description value";
mdmWindowsInformationProtectionPolicy.version = "Version value";
mdmWindowsInformationProtectionPolicy.enforcementLevel = WindowsInformationProtectionEnforcementLevel.ENCRYPT_AND_AUDIT_ONLY;
mdmWindowsInformationProtectionPolicy.enterpriseDomain = "Enterprise Domain value";
LinkedList<WindowsInformationProtectionResourceCollection> enterpriseProtectedDomainNamesList = new LinkedList<WindowsInformationProtectionResourceCollection>();
WindowsInformationProtectionResourceCollection enterpriseProtectedDomainNames = new WindowsInformationProtectionResourceCollection();
enterpriseProtectedDomainNames.displayName = "Display Name value";
LinkedList<String> resourcesList = new LinkedList<String>();
resourcesList.add("Resources value");
enterpriseProtectedDomainNames.resources = resourcesList;
enterpriseProtectedDomainNamesList.add(enterpriseProtectedDomainNames);
mdmWindowsInformationProtectionPolicy.enterpriseProtectedDomainNames = enterpriseProtectedDomainNamesList;
mdmWindowsInformationProtectionPolicy.protectionUnderLockConfigRequired = true;
WindowsInformationProtectionDataRecoveryCertificate dataRecoveryCertificate = new WindowsInformationProtectionDataRecoveryCertificate();
dataRecoveryCertificate.subjectName = "Subject Name value";
dataRecoveryCertificate.description = "Description value";
dataRecoveryCertificate.expirationDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:57:57.2481234+00:00");
dataRecoveryCertificate.certificate = Base64.getDecoder().decode("Y2VydGlmaWNhdGU=");
mdmWindowsInformationProtectionPolicy.dataRecoveryCertificate = dataRecoveryCertificate;
mdmWindowsInformationProtectionPolicy.revokeOnUnenrollDisabled = true;
mdmWindowsInformationProtectionPolicy.rightsManagementServicesTemplateId = UUID.fromString("abf7b16f-b16f-abf7-6fb1-f7ab6fb1f7ab");
mdmWindowsInformationProtectionPolicy.azureRightsManagementServicesAllowed = true;
mdmWindowsInformationProtectionPolicy.iconsVisible = true;
LinkedList<WindowsInformationProtectionApp> protectedAppsList = new LinkedList<WindowsInformationProtectionApp>();
WindowsInformationProtectionStoreApp protectedApps = new WindowsInformationProtectionStoreApp();
protectedApps.displayName = "Display Name value";
protectedApps.description = "Description value";
protectedApps.publisherName = "Publisher Name value";
protectedApps.productName = "Product Name value";
protectedApps.denied = true;
protectedAppsList.add(protectedApps);
mdmWindowsInformationProtectionPolicy.protectedApps = protectedAppsList;
LinkedList<WindowsInformationProtectionApp> exemptAppsList = new LinkedList<WindowsInformationProtectionApp>();
WindowsInformationProtectionStoreApp exemptApps = new WindowsInformationProtectionStoreApp();
exemptApps.displayName = "Display Name value";
exemptApps.description = "Description value";
exemptApps.publisherName = "Publisher Name value";
exemptApps.productName = "Product Name value";
exemptApps.denied = true;
exemptAppsList.add(exemptApps);
mdmWindowsInformationProtectionPolicy.exemptApps = exemptAppsList;
LinkedList<WindowsInformationProtectionResourceCollection> enterpriseNetworkDomainNamesList = new LinkedList<WindowsInformationProtectionResourceCollection>();
WindowsInformationProtectionResourceCollection enterpriseNetworkDomainNames = new WindowsInformationProtectionResourceCollection();
enterpriseNetworkDomainNames.displayName = "Display Name value";
LinkedList<String> resourcesList1 = new LinkedList<String>();
resourcesList1.add("Resources value");
enterpriseNetworkDomainNames.resources = resourcesList1;
enterpriseNetworkDomainNamesList.add(enterpriseNetworkDomainNames);
mdmWindowsInformationProtectionPolicy.enterpriseNetworkDomainNames = enterpriseNetworkDomainNamesList;
LinkedList<WindowsInformationProtectionProxiedDomainCollection> enterpriseProxiedDomainsList = new LinkedList<WindowsInformationProtectionProxiedDomainCollection>();
WindowsInformationProtectionProxiedDomainCollection enterpriseProxiedDomains = new WindowsInformationProtectionProxiedDomainCollection();
enterpriseProxiedDomains.displayName = "Display Name value";
LinkedList<ProxiedDomain> proxiedDomainsList = new LinkedList<ProxiedDomain>();
ProxiedDomain proxiedDomains = new ProxiedDomain();
proxiedDomains.ipAddressOrFQDN = "Ip Address Or FQDN value";
proxiedDomains.proxy = "Proxy value";
proxiedDomainsList.add(proxiedDomains);
enterpriseProxiedDomains.proxiedDomains = proxiedDomainsList;
enterpriseProxiedDomainsList.add(enterpriseProxiedDomains);
mdmWindowsInformationProtectionPolicy.enterpriseProxiedDomains = enterpriseProxiedDomainsList;
LinkedList<WindowsInformationProtectionIPRangeCollection> enterpriseIPRangesList = new LinkedList<WindowsInformationProtectionIPRangeCollection>();
WindowsInformationProtectionIPRangeCollection enterpriseIPRanges = new WindowsInformationProtectionIPRangeCollection();
enterpriseIPRanges.displayName = "Display Name value";
LinkedList<IpRange> rangesList = new LinkedList<IpRange>();
IPv6Range ranges = new IPv6Range();
ranges.lowerAddress = "Lower Address value";
ranges.upperAddress = "Upper Address value";
rangesList.add(ranges);
enterpriseIPRanges.ranges = rangesList;
enterpriseIPRangesList.add(enterpriseIPRanges);
mdmWindowsInformationProtectionPolicy.enterpriseIPRanges = enterpriseIPRangesList;
mdmWindowsInformationProtectionPolicy.enterpriseIPRangesAreAuthoritative = true;
LinkedList<WindowsInformationProtectionResourceCollection> enterpriseProxyServersList = new LinkedList<WindowsInformationProtectionResourceCollection>();
WindowsInformationProtectionResourceCollection enterpriseProxyServers = new WindowsInformationProtectionResourceCollection();
enterpriseProxyServers.displayName = "Display Name value";
LinkedList<String> resourcesList2 = new LinkedList<String>();
resourcesList2.add("Resources value");
enterpriseProxyServers.resources = resourcesList2;
enterpriseProxyServersList.add(enterpriseProxyServers);
mdmWindowsInformationProtectionPolicy.enterpriseProxyServers = enterpriseProxyServersList;
LinkedList<WindowsInformationProtectionResourceCollection> enterpriseInternalProxyServersList = new LinkedList<WindowsInformationProtectionResourceCollection>();
WindowsInformationProtectionResourceCollection enterpriseInternalProxyServers = new WindowsInformationProtectionResourceCollection();
enterpriseInternalProxyServers.displayName = "Display Name value";
LinkedList<String> resourcesList3 = new LinkedList<String>();
resourcesList3.add("Resources value");
enterpriseInternalProxyServers.resources = resourcesList3;
enterpriseInternalProxyServersList.add(enterpriseInternalProxyServers);
mdmWindowsInformationProtectionPolicy.enterpriseInternalProxyServers = enterpriseInternalProxyServersList;
mdmWindowsInformationProtectionPolicy.enterpriseProxyServersAreAuthoritative = true;
LinkedList<WindowsInformationProtectionResourceCollection> neutralDomainResourcesList = new LinkedList<WindowsInformationProtectionResourceCollection>();
WindowsInformationProtectionResourceCollection neutralDomainResources = new WindowsInformationProtectionResourceCollection();
neutralDomainResources.displayName = "Display Name value";
LinkedList<String> resourcesList4 = new LinkedList<String>();
resourcesList4.add("Resources value");
neutralDomainResources.resources = resourcesList4;
neutralDomainResourcesList.add(neutralDomainResources);
mdmWindowsInformationProtectionPolicy.neutralDomainResources = neutralDomainResourcesList;
mdmWindowsInformationProtectionPolicy.indexingEncryptedStoresOrItemsBlocked = true;
LinkedList<WindowsInformationProtectionResourceCollection> smbAutoEncryptedFileExtensionsList = new LinkedList<WindowsInformationProtectionResourceCollection>();
WindowsInformationProtectionResourceCollection smbAutoEncryptedFileExtensions = new WindowsInformationProtectionResourceCollection();
smbAutoEncryptedFileExtensions.displayName = "Display Name value";
LinkedList<String> resourcesList5 = new LinkedList<String>();
resourcesList5.add("Resources value");
smbAutoEncryptedFileExtensions.resources = resourcesList5;
smbAutoEncryptedFileExtensionsList.add(smbAutoEncryptedFileExtensions);
mdmWindowsInformationProtectionPolicy.smbAutoEncryptedFileExtensions = smbAutoEncryptedFileExtensionsList;
mdmWindowsInformationProtectionPolicy.isAssigned = true;

graphClient.deviceAppManagement().mdmWindowsInformationProtectionPolicies()
	.buildRequest()
	.post(mdmWindowsInformationProtectionPolicy);

```