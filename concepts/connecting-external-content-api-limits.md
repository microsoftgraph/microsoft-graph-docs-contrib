---
title: "Microsoft Graph connectors API limits"
description: "Keep implementation and operational limits in mind when designing Microsoft Graph connectors. Includes connection, schema, and group limits."
author: mecampos
ms.localizationpriority: high
doc_type: conceptualPageType
ms.prod: search
---

# Microsoft Graph connectors API limits

This article describes implementation and operational limits for Microsoft Graph connectors. Keep these limits in mind when designing connectors.

## Connection limits

| Limit type | Limit |
| ---------- | ----- |
| [Connection](/graph/api/resources/externalconnectors-externalconnection) resources per Microsoft 365 tenant | 30 |
| [Items](/graph/api/resources/externalconnectors-externalitem) per connection | 5,000,000 |
| Connection byte size | 500 GB |
| Items per tenant | 50,000,000 |

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
| Throughput limit to ingest items through a connection | 25 items/sec |
| Item size; this limit applies to the request body when [ingesting and indexing an item](/graph/api/externalconnectors-externalconnection-put-items) | 4 MB |
| Number of [activities](/graph/api/resources/externalconnectors-externalactivity); this is the [throttling](#throttling) threshold per activities call | 20 activities |
| Property size | N/A |

## Throttling

When a [throttling](throttling.md) threshold is exceeded, Microsoft Graph limits any further requests from that client for a period of time. When throttling occurs, Microsoft Graph returns HTTP status code 429 (Too many requests), and the requests fail. A suggested wait time is returned in the response header of the failed request.

Throttling behavior can depend on the type and number of requests. For example, if you have a high volume of requests, all request types are throttled. Threshold limits vary based on the request type. Therefore, you could encounter a scenario where writes are throttled but reads are still permitted.
