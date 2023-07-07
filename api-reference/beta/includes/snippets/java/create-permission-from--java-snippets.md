---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Permission permission = new Permission();
LinkedList<String> rolesList = new LinkedList<String>();
rolesList.add("write");
permission.roles = rolesList;
LinkedList<IdentitySet> grantedToIdentitiesList = new LinkedList<IdentitySet>();
IdentitySet grantedToIdentities = new IdentitySet();
Identity application = new Identity();
application.id = "89ea5c94-7736-4e25-95ad-3fa95f62b66e";
application.displayName = "Contoso Time Manager App";
grantedToIdentities.application = application;
grantedToIdentitiesList.add(grantedToIdentities);
permission.grantedToIdentities = grantedToIdentitiesList;

graphClient.sites("f2d90359-865b-4b6c-8848-d2722dd630e5").permissions()
	.buildRequest()
	.post(permission);

```