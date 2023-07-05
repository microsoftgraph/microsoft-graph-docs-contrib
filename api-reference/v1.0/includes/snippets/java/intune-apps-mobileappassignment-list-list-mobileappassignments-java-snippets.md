---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MobileAppAssignmentCollectionPage assignments = graphClient.deviceAppManagement().mobileApps("{mobileAppId}").assignments()
	.buildRequest()
	.get();

```