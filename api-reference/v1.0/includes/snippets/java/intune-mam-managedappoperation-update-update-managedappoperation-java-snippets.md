---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ManagedAppOperation managedAppOperation = new ManagedAppOperation();
managedAppOperation.setOdataType("#microsoft.graph.managedAppOperation");
managedAppOperation.setDisplayName("Display Name value");
managedAppOperation.setState("State value");
managedAppOperation.setVersion("Version value");
ManagedAppOperation result = graphClient.deviceAppManagement().managedAppRegistrations().byManagedAppRegistrationId("{managedAppRegistration-id}").operations().byManagedAppOperationId("{managedAppOperation-id}").patch(managedAppOperation);


```