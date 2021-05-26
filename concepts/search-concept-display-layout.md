---
ms.author: "yiwenwang"
title: "Use the Microsoft Search API in Microsoft Graph for rendering display layout"
description: "Use the Microsoft Search API in Microsoft Graph, for rendering the different search results"
author: "yiwenwang"
localization_priority: Normal
ms.prod: "search"
---

# Use the Microsoft Search API in Microsoft Graph for rendering display layout (preview)

A search display layout or result type is a rule that causes distinct kinds of search results to be displayed in different ways in search result pages. It consists of the following: 

- One or more characteristics or conditions to compare each search result against, such as the result source or content type of the search result.
- A display template to use for search results that meet the conditions. The display template controls the way in which all results that meet the conditions appear and behave on a search results page. 

The Microsoft Graph Search API provides a renderable response based on [Adaptive Cards].(https://adaptivecards.io/). By using the [Adaptive Card template](https://adaptivecards.io/designer), Clients can render different search result in different canvases.
Customers can customize their search result type in [Microsoft Office 365 Admin Center](https://admin.microsoft.com/Adminportal/Home#/MicrosoftSearch/resulttypes).

## Example 1: Sample Request

The following example shows how to get the display layouts or result templates, for rendering the search results, by setting **true** the **enableResultTemplate** property in the request contract.

The reponse shows 3 search hits, two of them related with the **resultTemplateId** 1603900360618_5XCBK2OXG, and the other one with the **resultTemplateId** 1603900360618_5XCBK2OXP. These IDs matches with one of the keys of the two display layouts contained in the **resultTemplates** dictionary, included within the response contract. Using the result template IDs you can know which display layout must to use for rendering each search result.

### Request

```HTTP
POST https://graph.microsoft.com/v1.0/search/query
Content-Type: application/json

{
    "requests": [
        {
            "entityTypes": [
                "externalItem"
            ],
            "contentSources": [
                "Connectors"
            ],
            "query": {
                "queryString": "*"
            },
            "resultTemplateOptions": {
                "enableResultTemplate": true
            }
        }
    ]
}
```

### Response


```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.searchResponse)",
    "value": [
        {
            "searchTerms": [],
            "hitsContainers": [
                {
                    "total": 1201701,
                    "moreResultsAvailable": true,
                    "hits": [
                        {
                            "hitId": "85437765-b430-434f-a945-38eceead5b93",
                            "rank": 1,
                            "summary": "",
                            "resultTemplateId": "1603900360618_5XCBK2OXG",
                            "resource": {
                                "@odata.type": "#microsoft.graph.externalItem",
                                "id": "B5B6E9C7-152C-4478-BCCB-CEF053F17397",
                                "Title": "[SM00186] Number of tests - Liquid",
                                "URL": "https://liquid.microsoft.com/Web/Object/Read/scanningtoolwarnings/Requirements/CodeQL.SM00186"
                            }
                        },
                        {
                            "hitId": "85437765-5430-434f-a945-38eceead5b94",
                            "rank": 2,
                            "summary": "",
                            "resultTemplateId": "1603900360618_5XCBK2OXP",
                            "resource": {
                                "@odata.type": "#microsoft.graph.externalItem",
                                "id": "B5B6E9C7-152C-4478-BCCB-CEF053F17398",
                                "Title": "[SM00186] Number of tests - Liquid 2",
                                "URL": "https://liquid.microsoft.com/Web/Object/Read/scanningtoolwarnings/Requirements/CodeQL.SM00186"
                            }
                        },
                        {
                            "hitId": "85437765-b430-434f-a945-38eceead5b95",
                            "rank": 3,
                            "summary": "",
                            "resultTemplatetId": "1603900360618_5XCBK2OXG",
                            "resource": {
                                "@odata.type": "#microsoft.graph.externalItem",
                                "id": "B5B6E9C7-152C-4478-BCCB-CEF053F17399",
                                "Title": "[SM00186] Number of tests - Liquid 3",
                                "URL": "https://liquid.microsoft.com/Web/Object/Read/scanningtoolwarnings/Requirements/CodeQL.SM00186"
                            }
                        }
                    ]
                }
            ],
            "resultTemplates": {
                "1603900360618_5XCBK2OXG": {
                    "displayName": "Liquid-3",
                    "body": {
                        "type": "AdaptiveCard",
                        "version": "1.0",
                        "body": [
                            {
                                "type": "ColumnSet",
                                "columns": [
                                    {
                                        "type": "Column",
                                        "width": "auto",
                                        "items": [
                                            {
                                                "type": "Image",
                                                "url": "https://searchuxcdn.azureedge.net/designerapp/images/LiquidLogo.png",
                                                "horizontalAlignment": "Center",
                                                "size": "Small"
                                            }
                                        ],
                                        "horizontalAlignment": "Center"
                                    },
                                    {
                                        "type": "Column",
                                        "width": 10,
                                        "items": [
                                            {
                                                "type": "TextBlock",
                                                "text": "[{Title}]({URL})",
                                                "weight": "Bolder",
                                                "color": "Accent",
                                                "size": "Medium",
                                                "maxLines": 3
                                            },
                                            {
                                                "type": "TextBlock",
                                                "text": "{ResultSnippet}",
                                                "maxLines": 3,
                                                "wrap": true
                                            }
                                        ],
                                        "spacing": "Medium"
                                    }
                                ]
                            }
                        ],
                        "$schema": "http://adaptivecards.io/schemas/adaptive-card.json"
                    }
                },
                "1603900360618_5XCBK2OXP": {
                    "displayName": "Liquid-2",
                    "body": {
                        "type": "AdaptiveCard",
                        "version": "1.0",
                        "body": [
                            {
                                "type": "ColumnSet",
                                "columns": [
                                    {
                                        "type": "Column",
                                        "width": "auto",
                                        "items": [
                                            {
                                                "type": "Image",
                                                "url": "https://searchuxcdn.azureedge.net/designerapp/images/LiquidLogo.png",
                                                "horizontalAlignment": "Center",
                                                "size": "Small"
                                            }
                                        ],
                                        "horizontalAlignment": "Center"
                                    },
                                    {
                                        "type": "Column",
                                        "width": 10,
                                        "items": [
                                            {
                                                "type": "TextBlock",
                                                "text": "[{Title}]({URL})",
                                                "weight": "Bolder",
                                                "color": "Accent",
                                                "size": "Medium",
                                                "maxLines": 3
                                            },
                                            {
                                                "type": "TextBlock",
                                                "text": "{ResultSnippet}",
                                                "maxLines": 3,
                                                "wrap": true
                                            }
                                        ],
                                        "spacing": "Medium"
                                    }
                                ]
                            }
                        ],
                        "$schema": "http://adaptivecards.io/schemas/adaptive-card.json"
                    }
                }
            }
        }
    ]
}

```

## Example 2: Using Adaptive Card templates for rendering pages

The follwing example shows how to use **AdaptiveCardTemplating** for rendering search results.

> [!IMPORTANT] 
> 
> The version used in Microsoft Graph Search API is based on the AdaptiveCardTemplating version before **May 2020 Release**.
>
> Check this links to now more about **AdaptiveCardTemplating**:
>
> https://docs.microsoft.com/adaptive-cards/templating/sdk
>
> https://docs.microsoft.com/adaptive-cards/templating/
> 



<!-- markdownlint-disable MD024 -->
Sample WebComponent:

```HTML
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<title>Adaptive Cards Example</title>

	<script src="https://unpkg.com/markdown-it@8.4.0/dist/markdown-it.js"></script>
    <script src="https://unpkg.com/adaptivecards/dist/adaptivecards.min.js"></script>

	<script src="https://unpkg.com/adaptivecards-templating@0.1.0-alpha1/dist/adaptivecards-templating.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

	<style type="text/css">
		#exampleDiv {
			border: solid 1px black;
		}
	</style>

	<script type="text/javascript">
	
	function renderCard() {
            // Define a template payload
			var layoutBodyStr = "{\"type\":\"AdaptiveCard\",\"version\":\"1.0\",\"body\":[{\"type\":\"ColumnSet\",\"columns\":[{\"type\":\"Column\",\"width\":\"auto\",\"items\":[{\"type\":\"Image\",\"url\":\"https://searchuxcdn.azureedge.net/designerapp/images/BingWikiLogo.png\",\"size\":\"Small\",\"horizontalAlignment\":\"Center\",\"altText\":\"Not available\",\"mimeType\":\"image/png\"}],\"height\":\"stretch\"},{\"type\":\"Column\",\"width\":8,\"items\":[{\"type\":\"TextBlock\",\"text\":\"[{Title}]({URL})\",\"color\":\"Accent\",\"size\":\"Medium\",\"weight\":\"Bolder\"},{\"type\":\"TextBlock\",\"text\":\"{RevisionUser} modified {{DATE({RevisionTimestamp})}}\",\"spacing\":\"Small\"},{\"type\":\"TextBlock\",\"text\":\"{ResultSnippet}\",\"wrap\":true,\"maxLines\":3,\"spacing\":\"Medium\"}],\"horizontalAlignment\":\"Center\",\"spacing\":\"Medium\"}]}],\"$schema\":\"http://adaptivecards.io/schemas/adaptive-card.json\"}";
			var templatePayload = JSON.parse(layoutBodyStr);
            
            // Create a Template instance from the template payload
            var template = new ACData.Template(templatePayload);

            // Create a data binding context, and set its $root property to the
            // data object to bind the template to
            var context = new ACData.EvaluationContext();
            context.$root = {
								"URL": "https://www.owiki.ms//wiki/Monthly_Engineering_Reviews",
								"Title": "Monthly Engineering Reviews",
								"RevisionUser": "Shparee@microsoft.com",
								"RevisionTimestamp": "2021-01-21T03:31:05Z",
								"HitHighlightedProperties": ""
            };

            // "Expand" the template - this generates the final Adaptive Card,
            // ready to render
            var card = template.expand(context);

            // Render the card
			var adaptiveCard = new AdaptiveCards.AdaptiveCard();
			adaptiveCard.parse(card);

			document.getElementById('exampleDiv').appendChild(adaptiveCard.render());
		}
		
	</script>

</head>

<body onload="renderCard()">
	<h1>Adaptive Cards Data Binding Example</h1>
	<div id="exampleDiv"></div>
</body>
</html>
```

## Next steps

- [Use the Microsoft Search API](/graph/api/resources/search-api-overview)
