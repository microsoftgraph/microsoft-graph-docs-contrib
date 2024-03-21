---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.qna import Qna
from msgraph.generated.models.answer_keyword import AnswerKeyword
from msgraph.generated.models.device_platform_type import DevicePlatformType

graph_client = GraphServiceClient(credentials, scopes)

request_body = Qna(
	display_name = "Global Country Holidays",
	web_url = "http://www.contoso.com/",
	description = "The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a weekend.    <table>    <thead>    <tr>    <td><strong>2021 Dates</strong></td>    <td><strong>Holiday</strong></td>    </tr>    </thead>    <tbody>    <tr>        <td>January 1, 2021</td>        <td>New Year's Day</td>    </tr>        <tr>        <td>January 18, 2021</td>        <td>Martin Luther King Day</td>    </tr>        <tr>        <td>February 15, 2021</td>        <td>Presidents Day</td>    </tr>        <tr>        <td>May 31, 2021</td>        <td>Memorial Day</td>    </tr>        <tr>        <td>July 5, 2021</td>        <td>Independence Day</td>    </tr>        <tr>        <td>September 6, 2021</td>        <td>Labor Day</td>    </tr>        <tr>        <td>November 25, 2021 - November 26, 2021</td>        <td>Thanksgiving Day and Day after Thanksgiving</td>    </tr>    <tr>        <td>December 23, 2021 - December 24, 2021</td>        <td>Christmas Eve and Christmas Day</td>    </tr>    </tbody>    </table>",
	keywords = AnswerKeyword(
		keywords = [
			"new years day",
			"martin luther king day",
			"presidents day",
			"memorial day",
			"independence day",
			"labor day",
			"thanksgiving",
			"christmas",
		],
		reserved_keywords = [
			"holidays",
			"paid days off",
		],
		match_similar_keywords = True,
	),
	availability_start_date_time = "2020-09-21T20:01:37Z",
	availability_end_date_time = "2021-12-31T20:01:37Z",
	language_tags = [
		"en-us",
	],
	platforms = [
		DevicePlatformType.IOS,
	],
	state = AnswerState.Published,
)

result = await graph_client.search.qnas.post(request_body)


```