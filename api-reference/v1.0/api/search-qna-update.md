---
title: "Update qna"
description: "Update the properties of a qna object."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: apiPageType
---

# Update qna

Namespace: microsoft.graph.search

Update the properties of a [qna](../resources/search-qna.md) object.

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
PATCH /search/qnas/{qnaId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

>**Note:** Any updates to the properties of a collection, such as keywords, replace the entire collection.

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

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_qna"
}-->
``` http
PATCH https://graph.microsoft.com/v1.0/search/qnas/733b26d5-af76-4eea-ac69-1a0ce8716897
Content-Type: application/json

{
  "description": "The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a wee​kend."
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}-->
``` http
HTTP/1.1 204 No Content
```
