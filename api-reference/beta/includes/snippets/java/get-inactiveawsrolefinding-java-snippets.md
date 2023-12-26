---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InactiveAwsRoleFinding inactiveAwsRoleFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxJbmFjdGl2ZUF3c1JvbGVGaW5kaW5nLDY1MTY0MA").microsoft.graph.inactiveAwsRoleFinding()
	.buildRequest()
	.get();

```