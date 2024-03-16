---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.search.Bookmark bookmark = new com.microsoft.graph.models.search.Bookmark();
bookmark.setDisplayName("Contoso Install Site");
bookmark.setWebUrl("http://www.contoso.com/");
bookmark.setDescription("Try or buy Contoso for Home or Business and view product information");
com.microsoft.graph.models.search.AnswerKeyword keywords = new com.microsoft.graph.models.search.AnswerKeyword();
LinkedList<String> keywords1 = new LinkedList<String>();
keywords1.add("Contoso");
keywords1.add("install");
keywords.setKeywords(keywords1);
LinkedList<String> reservedKeywords = new LinkedList<String>();
reservedKeywords.add("Contoso");
keywords.setReservedKeywords(reservedKeywords);
keywords.setMatchSimilarKeywords(true);
bookmark.setKeywords(keywords);
bookmark.setAvailabilityStartDateTime(null);
bookmark.setAvailabilityEndDateTime(null);
LinkedList<DevicePlatformType> platforms = new LinkedList<DevicePlatformType>();
platforms.add(DevicePlatformType.Android);
bookmark.setPlatforms(platforms);
LinkedList<com.microsoft.graph.models.search.AnswerVariant> targetedVariations = new LinkedList<com.microsoft.graph.models.search.AnswerVariant>();
com.microsoft.graph.models.search.AnswerVariant answerVariant = new com.microsoft.graph.models.search.AnswerVariant();
answerVariant.setLanguageTag("es-es");
answerVariant.setDisplayName("Sitio de instalación Contoso");
answerVariant.setDescription("Pruebe o compre Contoso hogar o negocios y vea la información del producto");
targetedVariations.add(answerVariant);
bookmark.setTargetedVariations(targetedVariations);
bookmark.setState(com.microsoft.graph.models.search.AnswerState.Published);
com.microsoft.graph.models.search.Bookmark result = graphClient.search().bookmarks().post(bookmark);


```