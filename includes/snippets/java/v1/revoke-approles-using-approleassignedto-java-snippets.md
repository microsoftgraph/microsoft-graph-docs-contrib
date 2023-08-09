---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.servicePrincipals("7ea9e944-71ce-443d-811c-71e8047b557a").appRoleAssignedTo("47nZsM8O_UuNq5Jz3QValCxBBiqJea9Drc9CMK4Ru_M")
	.buildRequest()
	.delete();

```