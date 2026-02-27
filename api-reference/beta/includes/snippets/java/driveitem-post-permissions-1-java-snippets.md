---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Permission permission = new Permission();
SharePointIdentitySet grantedToIdentitiesV2 = new SharePointIdentitySet();
Identity application = new Identity();
application.setId("89ea5c94-7736-4e25-95ad-3fa95f62b66e");
application.setDisplayName("Contoso Time Manager App");
grantedToIdentitiesV2.setApplication(application);
permission.setGrantedToIdentitiesV2(grantedToIdentitiesV2);
LinkedList<String> roles = new LinkedList<String>();
roles.add("write");
permission.setRoles(roles);
Permission result = graphClient.drives().byDriveId("{drive-id}").items().byDriveItemId("{driveItem-id}").permissions().post(permission);


```