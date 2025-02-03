---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.industrydata.UserProvisioningFlow provisioningFlow = new com.microsoft.graph.beta.models.industrydata.UserProvisioningFlow();
provisioningFlow.setOdataType("#microsoft.graph.industryData.userProvisioningFlow");
provisioningFlow.setCreateUnmatchedUsers(true);
com.microsoft.graph.beta.models.industrydata.UserManagementOptions managementOptions = new com.microsoft.graph.beta.models.industrydata.UserManagementOptions();
LinkedList<com.microsoft.graph.beta.models.industrydata.com.microsoft.graph.beta.models.industrydata.AdditionalUserAttributes> additionalAttributes = new LinkedList<com.microsoft.graph.beta.models.industrydata.com.microsoft.graph.beta.models.industrydata.AdditionalUserAttributes>();
additionalAttributes.add(com.microsoft.graph.beta.models.industrydata.AdditionalUserAttributes.UserGradeLevel);
managementOptions.setAdditionalAttributes(additionalAttributes);
com.microsoft.graph.beta.models.industrydata.AdditionalUserOptions additionalOptions = new com.microsoft.graph.beta.models.industrydata.AdditionalUserOptions();
additionalOptions.setMarkAllStudentsAsMinors(true);
additionalOptions.setAllowStudentContactAssociation(false);
managementOptions.setAdditionalOptions(additionalOptions);
provisioningFlow.setManagementOptions(managementOptions);
com.microsoft.graph.beta.models.industrydata.UserCreationOptions creationOptions = new com.microsoft.graph.beta.models.industrydata.UserCreationOptions();
LinkedList<com.microsoft.graph.beta.models.industrydata.UserConfiguration> configurations = new LinkedList<com.microsoft.graph.beta.models.industrydata.UserConfiguration>();
com.microsoft.graph.beta.models.industrydata.UserConfiguration userConfiguration = new com.microsoft.graph.beta.models.industrydata.UserConfiguration();
com.microsoft.graph.beta.models.industrydata.SimplePasswordSettings defaultPasswordSettings = new com.microsoft.graph.beta.models.industrydata.SimplePasswordSettings();
defaultPasswordSettings.setOdataType("#microsoft.graph.industryData.simplePasswordSettings");
defaultPasswordSettings.setPassword("********");
userConfiguration.setDefaultPasswordSettings(defaultPasswordSettings);
LinkedList<String> licenseSkus = new LinkedList<String>();
licenseSkus.add("Sku1");
userConfiguration.setLicenseSkus(licenseSkus);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("roleGroup@odata.bind", "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff");
userConfiguration.setAdditionalData(additionalData);
configurations.add(userConfiguration);
com.microsoft.graph.beta.models.industrydata.UserConfiguration userConfiguration1 = new com.microsoft.graph.beta.models.industrydata.UserConfiguration();
com.microsoft.graph.beta.models.industrydata.SimplePasswordSettings defaultPasswordSettings1 = new com.microsoft.graph.beta.models.industrydata.SimplePasswordSettings();
defaultPasswordSettings1.setOdataType("#microsoft.graph.industryData.simplePasswordSettings");
defaultPasswordSettings1.setPassword("********");
userConfiguration1.setDefaultPasswordSettings(defaultPasswordSettings1);
LinkedList<String> licenseSkus1 = new LinkedList<String>();
licenseSkus1.add("Sku2");
userConfiguration1.setLicenseSkus(licenseSkus1);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("roleGroup@odata.bind", "https://graph.microsoft.com/beta/external/industryData/roleGroups/students");
userConfiguration1.setAdditionalData(additionalData1);
configurations.add(userConfiguration1);
creationOptions.setConfigurations(configurations);
provisioningFlow.setCreationOptions(creationOptions);
com.microsoft.graph.models.industrydata.ProvisioningFlow result = graphClient.external().industryData().outboundProvisioningFlowSets().byOutboundProvisioningFlowSetId("{outboundProvisioningFlowSet-id}").provisioningFlows().post(provisioningFlow);


```