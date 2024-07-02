---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Permission permission = new Permission();
LinkedList<String> roles = new LinkedList<String>();
roles.add("write");
permission.setRoles(roles);
IdentitySet grantedTo = new IdentitySet();
Identity application = new Identity();
application.setId("89ea5c94-7736-4e25-95ad-3fa95f62b66e");
grantedTo.setApplication(application);
permission.setGrantedTo(grantedTo);
Permission result = graphClient.sites().bySiteId("{site-id}").permissions().post(permission);


```