---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.ForwardingProfile forwardingProfile = new com.microsoft.graph.beta.models.networkaccess.ForwardingProfile();
LinkedList<com.microsoft.graph.beta.models.networkaccess.Association> associations = new LinkedList<com.microsoft.graph.beta.models.networkaccess.Association>();
com.microsoft.graph.beta.models.networkaccess.AssociatedBranch association = new com.microsoft.graph.beta.models.networkaccess.AssociatedBranch();
association.setOdataType("#microsoft.graph.networkaccess.associatedBranch");
association.setBranchId("88e5a488-92c3-45d6-ba56-e5cfa63677e8");
associations.add(association);
forwardingProfile.setAssociations(associations);
com.microsoft.graph.models.networkaccess.ForwardingProfile result = graphClient.networkAccess().forwardingProfiles().byForwardingProfileId("{forwardingProfile-id}").patch(forwardingProfile);


```