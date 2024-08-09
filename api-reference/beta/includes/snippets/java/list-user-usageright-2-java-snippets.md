```java
// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UsageRightCollectionResponse result = graphClient.users().byUserId("{user-id}").cloudLicensing().usageRights().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "services/any(c:c/planId eq 113feb6c-3fe4-4440-bddc-54d774bf0318)";
});
```