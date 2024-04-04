---
title: "Microsoft Grounding API for Copilot Extensibility"
description: "Use the Microsoft Grounding API to build custom Copilots for the enterprise grounded in M365 data."
ms.localizationpriority: high
ms.prod: "search"
author: "njerigrevious"
scenarios: "getting-started"
---        

# Overview of the Microsoft Grounding API in Microsoft Graph

The Grounding API empowers developers to build custom Copilots for the enterprise. It retrieves data based on a natural language query as context to Large Language Models (LLMs) on your specific data, ensuring accurate and relevant responses. Starting with data stored on SharePoint, the new Grounding API will progressively incorporate more M365 entities going forward. 

> [!NOTE]
> The APIs in the beta endpoint are subject to change. We don't recommend that you use them in your production apps.

<!-- markdownlint-disable MD026 -->
## Important notes about licensing and throttling

In order to use the API, your tenant must be M365 Copilot license enabled. If you don't have the correct licensing, you'll get an authorization error. 

Also note that this API also has a throttling limit detailed below that affects applications that access it. You'll get an error if you exceed this and if you have more questions about Graph API throttling, please visit [Microsoft Graph service-specific throttling limits](/graph/throttling-limits) for more information.

| Request type | Per app across all tenants      |
|--------------|---------------------------------|
| POST         | 200 requests per app per 60 minutes  |

## Why use the Microsoft Grounding API?

This is best suited for scenarios with conversational experiences like Chat on your Data, chatbots, custom Copilots, and AI-enabled workflows. 

## What data can I add or access by using the Microsoft Grounding API?

The Microsoft Search API supports grounding the following content in the Microsoft cloud: 

- SharePoint and OneDrive files and folders ([driveItem](/graph/api/resources/driveitem) resources), [list](/graph/api/resources/list), [listItem](/graph/api/resources/listitem), [site](/graph/api/resources/site), and [drive](/graph/api/resources/drive) resources.

## Example 1: Use the Grounding API without scoping

### Request

```HTTP
POST https://graph.microsoft.com/beta/search/grounding
Content-Type: application/json

{
    "queryString": "test",
    "filterExpression": "",
    "metadata": [
        "id"
    ],
    "maxExtracts": 1,
    "maxExtractLength": 1024,
    "top": 10,
    "skip": 0
}
```

### Response

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "webUrl": "https://a830edad9050849substrate12-my.sharepoint.com/personal/admin_a830edad9050849substrate12_onmicrosoft_com",
            "extracts": [
                "<ddd/><c0>TEST</c0>_<c0>TEST</c0>_ExchangeMon_Substrate12. You can use this space to create lists, document <ddd/><c0>TEST</c0>_<c0>TEST</c0>_ExchangeMon_Substrate12. You can use this space to create lists, document <ddd/><c0>TEST</c0>_<c0>TEST</c0>_<ddd/>"
            ],
            "resourceType": "site",
            "resourceMetadata": {
                "displayName": null,
                "title": null,
                "root": null,
                "sharepointIds": null,
                "siteCollection": null,
                "id": "a830edad9050849substrate12-my.sharepoint.com,1f89cfc6-f470-4109-9d95-ad509e6131da,1fb162a0-8143-47c3-b9ef-6a85b2c8d677",
                "createdBy": null,
                "createdDateTime": null,
                "description": null,
                "eTag": null,
                "lastModifiedBy": null,
                "lastModifiedDateTime": null,
                "name": null,
                "parentReference": null,
                "webUrl": "https://a830edad9050849substrate12-my.sharepoint.com/personal/admin_a830edad9050849substrate12_onmicrosoft_com",
                "fields": {
                    "id": "AAAAANprX2zao9ZDrfzX7aaeKs4HAHXdTsvp59BNvsDls8gMUr4AAAAAAScAAHXdTsvp59BNvsDls8gMUr4AAAHUOgoAAA2",
                    "label_URL": "https://a830edad9050849substrate12-my.sharepoint.com/personal/admin_a830edad9050849substrate12_onmicrosoft_com"
                }
            }
        }
    ]
}
```

## Example 2: Use the Grounding API with scoping
You can scope using KQL in **filterExpression**.

### Request

```HTTP
POST https://graph.microsoft.com/beta/search/grounding
Content-Type: application/json

{
    "queryString": "test",
    "filterExpression": "(resourceType=listItem AND (path:https://a830edad9050849substrate12.sharepoint.com/)",
    "metadata": [
        "id"
    ],
    "maxExtracts": 1,
    "maxExtractLength": 1024,
    "top": 10,
    "skip": 0
}
```

### Response

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "webUrl": "https://a830edad9050849substrate12.sharepoint.com/sites/3sTestTeamSite/Shared Documents/Test Channel",
            "extracts": [
                ""
            ],
            "resourceType": "listItem",
            "resourceMetadata": {
                "id": "AAAAAPGLYfck7MRJi1Cz7vSiDtgHAMB5bGmUYDhBrVnh1utT7UUAAAAAAScAAMB5bGmUYDhBrVnh1utT7UUAAAKPRHgAAA2",
                "label_URL": "https://a830edad9050849substrate12.sharepoint.com/sites/3sTestTeamSite/Shared Documents/Test Channel"
            }
        }
    ]
}
```

## Known issues

- Grounding is not yet supported for entity types **externalItem**, **message**, **chatMessage**, **person** or answers (**acronym**, **bookmark** and **qna**). 

## Next steps

- Learn more about [Microsoft Search](/microsoftsearch/) and [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
- Explore the Grounding API in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
- Engage with the community on [Microsoft Q&A](/answers/products/m365#microsoft-graph) or on GitHub.
