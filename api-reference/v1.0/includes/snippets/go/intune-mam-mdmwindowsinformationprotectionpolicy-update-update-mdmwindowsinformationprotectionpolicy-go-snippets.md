---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMdmWindowsInformationProtectionPolicy()
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
description := "Description value"
requestBody.SetDescription(&description) 
version := "Version value"
requestBody.SetVersion(&version) 
enforcementLevel := graphmodels.ENCRYPTANDAUDITONLY_WINDOWSINFORMATIONPROTECTIONENFORCEMENTLEVEL 
requestBody.SetEnforcementLevel(&enforcementLevel) 
enterpriseDomain := "Enterprise Domain value"
requestBody.SetEnterpriseDomain(&enterpriseDomain) 


windowsInformationProtectionResourceCollection := graphmodels.NewWindowsInformationProtectionResourceCollection()
displayName := "Display Name value"
windowsInformationProtectionResourceCollection.SetDisplayName(&displayName) 
resources := []string {
	"Resources value",
}
windowsInformationProtectionResourceCollection.SetResources(resources)

enterpriseProtectedDomainNames := []graphmodels.WindowsInformationProtectionResourceCollectionable {
	windowsInformationProtectionResourceCollection,
}
requestBody.SetEnterpriseProtectedDomainNames(enterpriseProtectedDomainNames)
protectionUnderLockConfigRequired := true
requestBody.SetProtectionUnderLockConfigRequired(&protectionUnderLockConfigRequired) 
dataRecoveryCertificate := graphmodels.NewWindowsInformationProtectionDataRecoveryCertificate()
subjectName := "Subject Name value"
dataRecoveryCertificate.SetSubjectName(&subjectName) 
description := "Description value"
dataRecoveryCertificate.SetDescription(&description) 
expirationDateTime , err := time.Parse(time.RFC3339, "2016-12-31T23:57:57.2481234-08:00")
dataRecoveryCertificate.SetExpirationDateTime(&expirationDateTime) 
certificate := []byte("y2VydGlmaWNhdGU=")
dataRecoveryCertificate.SetCertificate(&certificate) 
requestBody.SetDataRecoveryCertificate(dataRecoveryCertificate)
revokeOnUnenrollDisabled := true
requestBody.SetRevokeOnUnenrollDisabled(&revokeOnUnenrollDisabled) 
rightsManagementServicesTemplateId := uuid.MustParse("abf7b16f-b16f-abf7-6fb1-f7ab6fb1f7ab")
requestBody.SetRightsManagementServicesTemplateId(&rightsManagementServicesTemplateId) 
azureRightsManagementServicesAllowed := true
requestBody.SetAzureRightsManagementServicesAllowed(&azureRightsManagementServicesAllowed) 
iconsVisible := true
requestBody.SetIconsVisible(&iconsVisible) 


windowsInformationProtectionApp := graphmodels.NewWindowsInformationProtectionStoreApp()
displayName := "Display Name value"
windowsInformationProtectionApp.SetDisplayName(&displayName) 
description := "Description value"
windowsInformationProtectionApp.SetDescription(&description) 
publisherName := "Publisher Name value"
windowsInformationProtectionApp.SetPublisherName(&publisherName) 
productName := "Product Name value"
windowsInformationProtectionApp.SetProductName(&productName) 
denied := true
windowsInformationProtectionApp.SetDenied(&denied) 

protectedApps := []graphmodels.WindowsInformationProtectionAppable {
	windowsInformationProtectionApp,
}
requestBody.SetProtectedApps(protectedApps)


windowsInformationProtectionApp := graphmodels.NewWindowsInformationProtectionStoreApp()
displayName := "Display Name value"
windowsInformationProtectionApp.SetDisplayName(&displayName) 
description := "Description value"
windowsInformationProtectionApp.SetDescription(&description) 
publisherName := "Publisher Name value"
windowsInformationProtectionApp.SetPublisherName(&publisherName) 
productName := "Product Name value"
windowsInformationProtectionApp.SetProductName(&productName) 
denied := true
windowsInformationProtectionApp.SetDenied(&denied) 

exemptApps := []graphmodels.WindowsInformationProtectionAppable {
	windowsInformationProtectionApp,
}
requestBody.SetExemptApps(exemptApps)


windowsInformationProtectionResourceCollection := graphmodels.NewWindowsInformationProtectionResourceCollection()
displayName := "Display Name value"
windowsInformationProtectionResourceCollection.SetDisplayName(&displayName) 
resources := []string {
	"Resources value",
}
windowsInformationProtectionResourceCollection.SetResources(resources)

enterpriseNetworkDomainNames := []graphmodels.WindowsInformationProtectionResourceCollectionable {
	windowsInformationProtectionResourceCollection,
}
requestBody.SetEnterpriseNetworkDomainNames(enterpriseNetworkDomainNames)


windowsInformationProtectionProxiedDomainCollection := graphmodels.NewWindowsInformationProtectionProxiedDomainCollection()
displayName := "Display Name value"
windowsInformationProtectionProxiedDomainCollection.SetDisplayName(&displayName) 


proxiedDomain := graphmodels.NewProxiedDomain()
ipAddressOrFQDN := "Ip Address Or FQDN value"
proxiedDomain.SetIpAddressOrFQDN(&ipAddressOrFQDN) 
proxy := "Proxy value"
proxiedDomain.SetProxy(&proxy) 

proxiedDomains := []graphmodels.ProxiedDomainable {
	proxiedDomain,
}
windowsInformationProtectionProxiedDomainCollection.SetProxiedDomains(proxiedDomains)

enterpriseProxiedDomains := []graphmodels.WindowsInformationProtectionProxiedDomainCollectionable {
	windowsInformationProtectionProxiedDomainCollection,
}
requestBody.SetEnterpriseProxiedDomains(enterpriseProxiedDomains)


windowsInformationProtectionIPRangeCollection := graphmodels.NewWindowsInformationProtectionIPRangeCollection()
displayName := "Display Name value"
windowsInformationProtectionIPRangeCollection.SetDisplayName(&displayName) 


ipRange := graphmodels.NewIPv6Range()
lowerAddress := "Lower Address value"
ipRange.SetLowerAddress(&lowerAddress) 
upperAddress := "Upper Address value"
ipRange.SetUpperAddress(&upperAddress) 

ranges := []graphmodels.IpRangeable {
	ipRange,
}
windowsInformationProtectionIPRangeCollection.SetRanges(ranges)

enterpriseIPRanges := []graphmodels.WindowsInformationProtectionIPRangeCollectionable {
	windowsInformationProtectionIPRangeCollection,
}
requestBody.SetEnterpriseIPRanges(enterpriseIPRanges)
enterpriseIPRangesAreAuthoritative := true
requestBody.SetEnterpriseIPRangesAreAuthoritative(&enterpriseIPRangesAreAuthoritative) 


windowsInformationProtectionResourceCollection := graphmodels.NewWindowsInformationProtectionResourceCollection()
displayName := "Display Name value"
windowsInformationProtectionResourceCollection.SetDisplayName(&displayName) 
resources := []string {
	"Resources value",
}
windowsInformationProtectionResourceCollection.SetResources(resources)

enterpriseProxyServers := []graphmodels.WindowsInformationProtectionResourceCollectionable {
	windowsInformationProtectionResourceCollection,
}
requestBody.SetEnterpriseProxyServers(enterpriseProxyServers)


windowsInformationProtectionResourceCollection := graphmodels.NewWindowsInformationProtectionResourceCollection()
displayName := "Display Name value"
windowsInformationProtectionResourceCollection.SetDisplayName(&displayName) 
resources := []string {
	"Resources value",
}
windowsInformationProtectionResourceCollection.SetResources(resources)

enterpriseInternalProxyServers := []graphmodels.WindowsInformationProtectionResourceCollectionable {
	windowsInformationProtectionResourceCollection,
}
requestBody.SetEnterpriseInternalProxyServers(enterpriseInternalProxyServers)
enterpriseProxyServersAreAuthoritative := true
requestBody.SetEnterpriseProxyServersAreAuthoritative(&enterpriseProxyServersAreAuthoritative) 


windowsInformationProtectionResourceCollection := graphmodels.NewWindowsInformationProtectionResourceCollection()
displayName := "Display Name value"
windowsInformationProtectionResourceCollection.SetDisplayName(&displayName) 
resources := []string {
	"Resources value",
}
windowsInformationProtectionResourceCollection.SetResources(resources)

neutralDomainResources := []graphmodels.WindowsInformationProtectionResourceCollectionable {
	windowsInformationProtectionResourceCollection,
}
requestBody.SetNeutralDomainResources(neutralDomainResources)
indexingEncryptedStoresOrItemsBlocked := true
requestBody.SetIndexingEncryptedStoresOrItemsBlocked(&indexingEncryptedStoresOrItemsBlocked) 


windowsInformationProtectionResourceCollection := graphmodels.NewWindowsInformationProtectionResourceCollection()
displayName := "Display Name value"
windowsInformationProtectionResourceCollection.SetDisplayName(&displayName) 
resources := []string {
	"Resources value",
}
windowsInformationProtectionResourceCollection.SetResources(resources)

smbAutoEncryptedFileExtensions := []graphmodels.WindowsInformationProtectionResourceCollectionable {
	windowsInformationProtectionResourceCollection,
}
requestBody.SetSmbAutoEncryptedFileExtensions(smbAutoEncryptedFileExtensions)
isAssigned := true
requestBody.SetIsAssigned(&isAssigned) 

result, err := graphClient.DeviceAppManagement().MdmWindowsInformationProtectionPolicies().ByMdmWindowsInformationProtectionPolicieId("mdmWindowsInformationProtectionPolicy-id").Patch(context.Background(), requestBody, nil)


```