---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageSubject accessPackageSubject = new AccessPackageSubject();
accessPackageSubject.setSubjectLifecycle(AccessPackageSubjectLifecycle.Governed);
AccessPackageSubject result = graphClient.identityGovernance().entitlementManagement().subjectsWithObjectId("{objectId}").patch(accessPackageSubject);


```