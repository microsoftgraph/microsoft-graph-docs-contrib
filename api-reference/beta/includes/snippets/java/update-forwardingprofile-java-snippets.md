---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ForwardingProfile forwardingProfile = new ForwardingProfile();
LinkedList<Association> associationsList = new LinkedList<Association>();
AssociatedBranch associations = new AssociatedBranch();
associations.branchId = "88e5a488-92c3-45d6-ba56-e5cfa63677e8";
associationsList.add(associations);
forwardingProfile.associations = associationsList;

graphClient.networkAccess().forwardingProfiles("{forwardingProfileId}")
	.buildRequest()
	.patch(forwardingProfile);

```