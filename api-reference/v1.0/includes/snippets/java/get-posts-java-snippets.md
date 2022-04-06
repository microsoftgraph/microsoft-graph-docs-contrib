---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PostCollectionPage posts = graphClient.groups("02f3bafb-448c-487c-88c2-5fd65ce49a41").threads("AAQkADI5YzgxODgyLTExZDgtNDhkMS1iZDRjLTBhZGZiN2ExYWQxNwMkABAADW7fw6FZNEuyjrGA9R8SshAADW7fw6FZNEuyjrGA9R8Ssg==").posts()
	.buildRequest()
	.get();

```