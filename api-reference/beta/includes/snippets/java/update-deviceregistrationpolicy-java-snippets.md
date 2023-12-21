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
azureADRegistration.isAdminConfigurable = true;
EnumeratedDeviceRegistrationMembership allowedToRegister = new EnumeratedDeviceRegistrationMembership();
LinkedList<String> usersList = new LinkedList<String>();
allowedToRegister.users = usersList;
LinkedList<String> groupsList = new LinkedList<String>();
groupsList.add("3c8ef067-8b96-44de-b2ae-557dfa0f97a0");
allowedToRegister.groups = groupsList;
azureADRegistration.allowedToRegister = allowedToRegister;
deviceRegistrationPolicy.azureADRegistration = azureADRegistration;
AzureADJoinPolicy azureADJoin = new AzureADJoinPolicy();
azureADJoin.isAdminConfigurable = true;
AllDeviceRegistrationMembership allowedToJoin = new AllDeviceRegistrationMembership();
azureADJoin.allowedToJoin = allowedToJoin;
deviceRegistrationPolicy.azureADJoin = azureADJoin;
LocalAdminPasswordSettings localAdminPassword = new LocalAdminPasswordSettings();
localAdminPassword.isEnabled = true;
deviceRegistrationPolicy.localAdminPassword = localAdminPassword;

graphClient.policies().deviceRegistrationPolicy()
	.buildRequest()
	.put(deviceRegistrationPolicy);

```