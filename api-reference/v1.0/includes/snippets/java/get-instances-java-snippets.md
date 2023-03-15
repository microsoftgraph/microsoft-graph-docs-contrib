---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("startDateTime", "2019-04-08T09:00:00.0000000"));
requestOptions.add(new QueryOption("endDateTime", "2019-04-30T09:00:00.0000000"));

EventCollectionPage instances = graphClient.me().events("AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAAa_WKzAAA=").instances()
	.buildRequest( requestOptions )
	.select("subject,bodyPreview,seriesMasterId,type,recurrence,start,end")
	.get();

```