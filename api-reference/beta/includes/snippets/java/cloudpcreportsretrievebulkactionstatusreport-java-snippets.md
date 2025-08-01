---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ByteArrayInputStream stream = new ByteArrayInputStream(new byte[0]); //stream to upload
var result = graphClient.deviceManagement().virtualEndpoint().reports().retrieveBulkActionStatusReport().post(stream);


```