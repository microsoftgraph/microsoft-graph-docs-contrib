---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Application application = new Application();
ServicePrincipalLockConfiguration servicePrincipalLockConfiguration = new ServicePrincipalLockConfiguration();
servicePrincipalLockConfiguration.setIsEnabled(true);
servicePrincipalLockConfiguration.setCredentialsWithUsageSign(true);
servicePrincipalLockConfiguration.setCredentialsWithUsageVerify(true);
application.setServicePrincipalLockConfiguration(servicePrincipalLockConfiguration);
Application result = graphClient.applications().byApplicationId("{application-id}").patch(application);


```