---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ItemPublication itemPublication = new ItemPublication();
itemPublication.setPublisher("International Association of Branding Management Publishing");
itemPublication.setThumbnailUrl("https://iabm.io/sdhdfhsdhshsd.jpg");
ItemPublication result = graphClient.users().byUserId("{user-id}").profile().publications().byItemPublicationId("{itemPublication-id}").patch(itemPublication);


```