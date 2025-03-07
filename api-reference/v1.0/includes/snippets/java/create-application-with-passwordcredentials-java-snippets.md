---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Application application = new Application();
application.setDisplayName("MyAppName");
LinkedList<PasswordCredential> passwordCredentials = new LinkedList<PasswordCredential>();
PasswordCredential passwordCredential = new PasswordCredential();
passwordCredential.setDisplayName("Password name");
passwordCredentials.add(passwordCredential);
application.setPasswordCredentials(passwordCredentials);
Application result = graphClient.applications().post(application);


```