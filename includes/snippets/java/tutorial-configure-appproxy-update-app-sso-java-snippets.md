---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Application application = new Application();
OnPremisesPublishing onPremisesPublishing = new OnPremisesPublishing();
OnPremisesPublishingSingleSignOn singleSignOnSettings = new OnPremisesPublishingSingleSignOn();
KerberosSignOnSettings kerberosSignOnSettings = new KerberosSignOnSettings();
kerberosSignOnSettings.kerberosServicePrincipalName = "HTTP/iwademo.contoso.com";
kerberosSignOnSettings.kerberosSignOnMappingAttributeType = KerberosSignOnMappingAttributeType.USER_PRINCIPAL_NAME;
singleSignOnSettings.kerberosSignOnSettings = kerberosSignOnSettings;
singleSignOnSettings.singleSignOnMode = SingleSignOnMode.ON_PREMISES_KERBEROS;
onPremisesPublishing.singleSignOnSettings = singleSignOnSettings;
application.onPremisesPublishing = onPremisesPublishing;

graphClient.applications("bf21f7e9-9d25-4da2-82ab-7fdd85049f83")
	.buildRequest()
	.patch(application);

```