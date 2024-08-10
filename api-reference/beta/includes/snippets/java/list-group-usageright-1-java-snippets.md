```java
// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UsageRightCollectionResponse result = graphClient.groups().byGroupId("{group-id}").cloudLicensing().usageRights().get();
```