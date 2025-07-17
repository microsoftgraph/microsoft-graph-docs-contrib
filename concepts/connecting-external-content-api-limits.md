---
title: "Microsoft 365 Copilot connectors API limits"
description: "Keep implementation and operational limits in mind when designing Copilot connectors. Includes connection, schema, and group limits."
author: mecampos
ms.localizationpriority: high
doc_type: conceptualPageType
ms.subservice: search
ms.date: 05/15/2025
---

# Copilot connectors API limits

This article describes implementation and operational limits for Microsoft 365 Copilot connectors (formerly Microsoft Graph connectors). Keep these limits in mind when designing connectors.

## Schema limits

| Limit type | Limit |
| ---------- | ----- |
| Properties that can be defined in a [schema](/graph/api/resources/externalconnectors-schema), characterizing the data ingested through a connection | 128 |

## Group limits

| Limit type | Limit |
| ---------- | ----- |
| [External groups](/graph/api/resources/externalconnectors-externalgroup) per Microsoft 365 tenant | 100,000 | 
| Requests allowed per second (requests/sec) in the group administration [throttling](#throttling) threshold | 1,000 |
| [External groups](/graph/api/resources/externalconnectors-externalgroup) per user for search query | 10,000 | 

## Item ingestion

| Limit type | Limit |
| ---------- | ----- |
| Item size; this limit applies to the request body when [ingesting and indexing an item](/graph/api/externalconnectors-externalconnection-put-items) | 4 MB |
| Number of [activities](/graph/api/resources/externalconnectors-externalactivity); this is the [throttling](#throttling) threshold per activities call | 20 activities |
| Property size | N/A |

> **Note:** The 4 MB item size limit refers to the total size of *parsed text content* that is typically 10% of the original file size for common formats (for example, docx, ppt, and PDF). To contextualize, 4 MB equals 4,000,000 bytes that translates to approximately 600K-700K words or 1,400 pages (averaging 500 words per page).

## Throttling

When a [throttling](throttling.md) threshold is exceeded, Microsoft Graph limits any further requests from that client for a period of time. When throttling occurs, Microsoft Graph returns HTTP status code 429 (Too many requests), and the requests fail. A suggested wait time is returned in the response header of the failed request.

Throttling behavior can depend on the type and number of requests. For example, if you have a high volume of requests, all request types are throttled. Threshold limits vary based on the request type. Therefore, you could encounter a scenario where writes are throttled but reads are still permitted.
