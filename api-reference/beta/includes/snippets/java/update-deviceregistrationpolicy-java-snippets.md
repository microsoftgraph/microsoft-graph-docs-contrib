---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceRegistrationPolicy deviceRegistrationPolicy = new DeviceRegistrationPolicy();
deviceRegistrationPolicy.id = "deviceRegistrationPolicy";
deviceRegistrationPolicy.displayName = "Device Registration Policy";
deviceRegistrationPolicy.description = "Tenant-wide policy that manages intial provisioning controls using quota restrictions, additional authentication and authorization checks";
deviceRegistrationPolicy.userDeviceQuota = 50;
deviceRegistrationPolicy.multiFactorAuthConfiguration = MultiFactorAuthConfiguration.NOT_REQUIRED;
AzureADRegistrationPolicy azureADRegistration = new AzureADRegistrationPolicy();
azureADRegistration.appliesTo = PolicyScope.NONE;
azureADRegistration.isAdminConfigurable = false;
LinkedList<String> allowedUsersList = new LinkedList<String>();
azureADRegistration.allowedUsers = allowedUsersList;
LinkedList<String> allowedGroupsList = new LinkedList<String>();
azureADRegistration.allowedGroups = allowedGroupsList;
deviceRegistrationPolicy.azureADRegistration = azureADRegistration;
AzureAdJoinPolicy azureADJoin = new AzureAdJoinPolicy();
azureADJoin.appliesTo = PolicyScope.NONE;
azureADJoin.isAdminConfigurable = true;
LinkedList<String> allowedUsersList1 = new LinkedList<String>();
azureADJoin.allowedUsers = allowedUsersList1;
LinkedList<String> allowedGroupsList1 = new LinkedList<String>();
azureADJoin.allowedGroups = allowedGroupsList1;
deviceRegistrationPolicy.azureADJoin = azureADJoin;
LocalAdminPasswordSettings localAdminPassword = new LocalAdminPasswordSettings();
localAdminPassword.isEnabled = true;
deviceRegistrationPolicy.localAdminPassword = localAdminPassword;

graphClient.policies().deviceRegistrationPolicy()
	.buildRequest()
	.put(deviceRegistrationPolicy);

```