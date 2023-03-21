---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DriveItemDeltaCollectionPage delta = graphClient.me().drive().root()
	.delta(DriveItemDeltaParameterSet
		.newBuilder()
		.withToken("MzslMjM0OyUyMzE7MzsyM2YwNDVhMS1lNmRmLTQ1N2MtOGQ5NS1hNmViZDVmZWRhNWQ7NjM3OTQzNzQwODQ3NTcwMDAwOzU4NTk2OTY0NDslMjM7JTIzOyUyMzA")
		.build())
	.buildRequest()
	.get();

```