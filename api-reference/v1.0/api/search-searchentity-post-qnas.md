---
title: "Create qna"
description: "Create a new qna object."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: apiPageType
---

# Create qna

Namespace: microsoft.graph.search

Create a new [qna](../resources/search-qna.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| SearchConfiguration.Read.All, SearchConfiguration.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported. |
|Application| SearchConfiguration.Read.All, SearchConfiguration.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /search/qnas
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [qna](../resources/search-qna.md) object.

The following table shows the properties that are available when you create a [qna](../resources/search-qna.md).

|Property|Type|Description|
|:---|:---|:---|
|availabilityEndDateTime|DateTimeOffset|Date and time when the QnA stops appearing as a search result. Set as `null` for always available. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|availabilityStartDateTime|DateTimeOffset|Date and time when the QnA starts to appear as a search result. Set as `null` for always available. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|Answer that is displayed in search results. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|displayName|String|Question that is displayed in search results. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|groupIds|String collection|The list of security groups that are able to view this QnA.|
|keywords|[microsoft.graph.search.answerKeyword](../resources/search-answerkeyword.md)|Keywords that trigger this QnA to appear in search results.|
|languageTags|String collection|A list of geographically specific language names in which this QnA can be viewed. Each language tag value follows the pattern {language}-{region}. For example, `en-us` is English as used in the United States. For the list of possible values, see [Supported language tags](../resources/search-api-answers-overview.md#supported-language-tags). |
|platforms|microsoft.graph.devicePlatformType collection|List of devices and operating systems that are able to view this QnA. Possible values are: `android`, `androidForWork`, `ios`, `macOS`, `windowsPhone81`, `windowsPhone81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidASOP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue`.|
|state|microsoft.graph.search.answerState|State of the QnA. Possible values are: `published`, `draft`, `excluded`, `unknownFutureValue`.|
|targetedVariations|[microsoft.graph.search.answerVariant](../resources/search-answervariant.md) collection|Variations of a QnA for different countries or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings apply to all variations.|
|webUrl|String|The URL link for the QnA. When users select this QnA from the search results, they're directed to the specified URL. Inherited from [searchAnswer](../resources/search-searchanswer.md).|

## Response

If successful, this method returns a `201 Created` response code with the ID of the question and answer created.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_qna_from_qnas"
}-->
```http
POST https://graph.microsoft.com/v1.0/search/qnas
Content-Type: application/json

{
  "displayName": "Global Country Holidays",
  "webUrl": "http://www.contoso.com/",
  "description": "The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a weekend.    <table>    <thead>    <tr>    <td><strong>2021 Dates</strong></td>    <td><strong>Holiday</strong></td>    </tr>    </thead>    <tbody>    <tr>        <td>January 1, 2021</td>        <td>New Year's Day</td>    </tr>        <tr>        <td>January 18, 2021</td>        <td>Martin Luther King Day</td>    </tr>        <tr>        <td>February 15, 2021</td>        <td>Presidents Day</td>    </tr>        <tr>        <td>May 31, 2021</td>        <td>Memorial Day</td>    </tr>        <tr>        <td>July 5, 2021</td>        <td>Independence Day</td>    </tr>        <tr>        <td>September 6, 2021</td>        <td>Labor Day</td>    </tr>        <tr>        <td>November 25, 2021 - November 26, 2021</td>        <td>Thanksgiving Day and Day after Thanksgiving</td>    </tr>    <tr>        <td>December 23, 2021 - December 24, 2021</td>        <td>Christmas Eve and Christmas Day</td>    </tr>    </tbody>    </table>",
  "keywords":  {
    "keywords": ["new years day", "martin luther king day", "presidents day", "memorial day", "independence day", "labor day", "thanksgiving", "christmas"],
    "reservedKeywords": ["holidays", "paid days off"],
    "matchSimilarKeywords": true
  },
  "availabilityStartDateTime": "2020-09-21T20:01:37Z",
  "availabilityEndDateTime": "2021-12-31T20:01:37Z",
  "languageTags": ["en-us"],
  "platforms": ["ios"],
  "state": "published"
}
```

### Response

The following example shows the response.

<!--{
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.search.qna"
}-->
```http
HTTP/1.1 201 Created
Location: /733b26d5-af76-4eea-ac69-1a0ce8716897
Content-Type: application/json

{
  "id": "733b26d5-af76-4eea-ac69-1a0ce8716897"
}
```
