---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.me().tasks().lists("AAMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNmMGRmOWNiYQAu").tasks("AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0AkOO4xOT")
	.buildRequest()
	.delete();

```