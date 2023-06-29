---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Bookmark bookmark = new Bookmark();
bookmark.displayName = "Contoso Install Site";
bookmark.webUrl = "http://www.contoso.com/";
bookmark.description = "Try or buy Contoso for Home or Business and view product information";
AnswerKeyword keywords = new AnswerKeyword();
LinkedList<String> keywordsList = new LinkedList<String>();
keywordsList.add("Contoso");
keywordsList.add("install");
keywords.keywords = keywordsList;
LinkedList<String> reservedKeywordsList = new LinkedList<String>();
reservedKeywordsList.add("Contoso");
keywords.reservedKeywords = reservedKeywordsList;
keywords.matchSimilarKeywords = true;
bookmark.keywords = keywords;
bookmark.state = AnswerState.PUBLISHED;

graphClient.search().bookmarks()
	.buildRequest()
	.post(bookmark);

```