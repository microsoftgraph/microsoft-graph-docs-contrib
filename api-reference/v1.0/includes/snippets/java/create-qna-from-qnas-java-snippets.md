---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.search.Qna qna = new com.microsoft.graph.models.search.Qna();
qna.setDisplayName("Global Country Holidays");
qna.setWebUrl("http://www.contoso.com/");
qna.setDescription("The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a weekend.    <table>    <thead>    <tr>    <td><strong>2021 Dates</strong></td>    <td><strong>Holiday</strong></td>    </tr>    </thead>    <tbody>    <tr>        <td>January 1, 2021</td>        <td>New Year's Day</td>    </tr>        <tr>        <td>January 18, 2021</td>        <td>Martin Luther King Day</td>    </tr>        <tr>        <td>February 15, 2021</td>        <td>Presidents Day</td>    </tr>        <tr>        <td>May 31, 2021</td>        <td>Memorial Day</td>    </tr>        <tr>        <td>July 5, 2021</td>        <td>Independence Day</td>    </tr>        <tr>        <td>September 6, 2021</td>        <td>Labor Day</td>    </tr>        <tr>        <td>November 25, 2021 - November 26, 2021</td>        <td>Thanksgiving Day and Day after Thanksgiving</td>    </tr>    <tr>        <td>December 23, 2021 - December 24, 2021</td>        <td>Christmas Eve and Christmas Day</td>    </tr>    </tbody>    </table>");
com.microsoft.graph.models.search.AnswerKeyword keywords = new com.microsoft.graph.models.search.AnswerKeyword();
LinkedList<String> keywords1 = new LinkedList<String>();
keywords1.add("new years day");
keywords1.add("martin luther king day");
keywords1.add("presidents day");
keywords1.add("memorial day");
keywords1.add("independence day");
keywords1.add("labor day");
keywords1.add("thanksgiving");
keywords1.add("christmas");
keywords.setKeywords(keywords1);
LinkedList<String> reservedKeywords = new LinkedList<String>();
reservedKeywords.add("holidays");
reservedKeywords.add("paid days off");
keywords.setReservedKeywords(reservedKeywords);
keywords.setMatchSimilarKeywords(true);
qna.setKeywords(keywords);
OffsetDateTime availabilityStartDateTime = OffsetDateTime.parse("2020-09-21T20:01:37Z");
qna.setAvailabilityStartDateTime(availabilityStartDateTime);
OffsetDateTime availabilityEndDateTime = OffsetDateTime.parse("2021-12-31T20:01:37Z");
qna.setAvailabilityEndDateTime(availabilityEndDateTime);
LinkedList<String> languageTags = new LinkedList<String>();
languageTags.add("en-us");
qna.setLanguageTags(languageTags);
LinkedList<DevicePlatformType> platforms = new LinkedList<DevicePlatformType>();
platforms.add(DevicePlatformType.IOS);
qna.setPlatforms(platforms);
qna.setState(com.microsoft.graph.models.search.AnswerState.Published);
com.microsoft.graph.models.search.Qna result = graphClient.search().qnas().post(qna);


```