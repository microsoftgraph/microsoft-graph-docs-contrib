---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ItemPublication itemPublication = new ItemPublication();
itemPublication.setDescription("One persons journey to the top of the branding management field.");
itemPublication.setDisplayName("Got Brands? The story of Innocenty Popov and his journey to the top.");
LocalDate publishedDate = LocalDate.parse("Date");
itemPublication.setPublishedDate(publishedDate);
itemPublication.setPublisher("International Association of Branding Management Publishing");
itemPublication.setThumbnailUrl("https://iabm.io/sdhdfhsdhshsd.jpg");
itemPublication.setWebUrl("https://www.iabm.io");
ItemPublication result = graphClient.me().profile().publications().post(itemPublication);


```