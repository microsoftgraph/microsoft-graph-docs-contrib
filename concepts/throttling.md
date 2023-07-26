---
title: "Microsoft Graph throttling guidance"
description: "Find best practices for maintaining optimal performance of the Microsoft Graph service if an overwhelming number of requests occurs."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: jameskitindi
ms.localizationpriority: high
ms.custom: graphiamtop20
ms.date: 11/11/2022
---

# Microsoft Graph throttling guidance

Throttling limits the number of concurrent calls to a service to prevent overuse of resources. Microsoft Graph is designed to handle a high volume of requests. If an overwhelming number of requests occurs, throttling helps maintain optimal performance and reliability of the Microsoft Graph service.

Throttling limits vary based on the scenario. For example, if you are performing a large volume of writes, the possibility for throttling is higher than if you are only performing reads.

> [!NOTE]
> Solutions that need to extract a large volume of data from Microsoft Graph should use [Microsoft Graph Data Connect](data-connect-concept-overview.md) instead of the Microsoft Graph REST APIs. Microsoft Graph Data Connect allows organizations to extract Microsoft 365 data in bulk without being subject to throttling limits.

<!-- markdownlint-disable MD033 -->
<br/>

<!-- markdownlint-disable MD034 -->
> [!VIDEO https://www.youtube-nocookie.com/embed/J4CFxVuzNMA]
<!-- markdownlint-enable MD034 -->

<!-- markdownlint-disable MD026 -->
## What happens when throttling occurs?
<!-- markdownlint-enable MD026 -->

When a throttling threshold is exceeded, Microsoft Graph limits any further requests from that client for a period of time. When throttling occurs, Microsoft Graph returns HTTP status code 429 (Too many requests), and the requests fail. A suggested wait time is returned in the response header of the failed request. Throttling behavior can depend on the type and number of requests. For example, if you have a high volume of requests, all requests types are throttled. Threshold limits vary based on the request type. Therefore, you could encounter a scenario where writes are throttled but reads are still permitted.

## Common throttling scenarios

The most common causes of throttling of clients include:

- A large number of requests across all applications in a tenant.
- A large number of requests from a particular application across all tenants.

## Sample response

Whenever the throttling threshold is exceeded, Microsoft Graph responds with a response similar to this one.

```http
HTTP/1.1 429 Too Many Requests
Content-Length: 312
Content-Type: application/json
Retry-After: 10

{
  "error": {
    "code": "TooManyRequests",
    "innerError": {
      "code": "429",
      "date": "2020-08-18T12:51:51",
      "message": "Please retry after",
      "request-id": "94fb3b52-452a-4535-a601-69e0a90e3aa2",
      "status": "429"
    },
    "message": "Please retry again later."
  }
}
```

## Best practices to handle throttling

The following are best practices for handling throttling:

- Reduce the number of operations per request.
- Reduce the frequency of calls.
- Avoid immediate retries, because all requests accrue against your usage limits.

When you implement error handling, use the HTTP error code 429 to detect throttling. The failed response includes the `Retry-After` response header. Backing off requests using the `Retry-After` delay is the fastest way to recover from throttling because Microsoft Graph continues to log resource usage while a client is being throttled.

1. Wait the number of seconds specified in the `Retry-After` header.
2. Retry the request.
3. If the request fails again with a 429 error code, you are still being throttled. Continue to use the recommended `Retry-After` delay and retry the request until it succeeds.

All the resources and APIs described in the [Service-specific limits](throttling-limits.md) provide a `Retry-After` header except when noted.

For a broader discussion of throttling in the Microsoft Cloud, see [Throttling pattern](/azure/architecture/patterns/throttling).

> [!NOTE]
> If no `Retry-After` header is provided by the response, we recommend implementing an exponential backoff retry policy. You can also implement [more advanced patterns](/azure/architecture/patterns/category/resiliency) when building large-scale applications.
>
> Microsoft Graph SDKs already implement handlers that rely on the `Retry-After` header or default to an exponential backoff retry policy.

## Best practices to avoid throttling

Programming patterns like continuously polling a resource to check for updates and regularly scanning resource collections to check for new or deleted resources are more likely to lead to applications being throttled and degrade overall performances. You should instead leverage [change tracking](delta-query-overview.md) and [change notifications](webhooks.md) when available.

>[!NOTE]
>[Best practices for discovering files and detecting changes at scale](/onedrive/developer/rest-api/concepts/scan-guidance) describes best practices in details.

## Throttling and batching

[JSON batching](./json-batching.md) allows you to optimize your application by combining multiple requests into a single JSON object. Requests in a batch are evaluated individually against throttling limits and if any request exceeds the limits, it fails with a `status` of `429` and an error similar to the [preceding sample response](#sample-response). The batch itself fails with a status code of `424` (Failed Dependency). It is possible for multiple requests to be throttled in a single batch. You should retry each failed request from the batch using the value provided in the `retry-after` response header from the JSON content. You may retry all the failed requests in a new batch after the longest `retry-after` value.

If SDKs retry throttled requests automatically when they are not batched, throttled requests that were part of a batch are not retried automatically.

## Next steps

- Identify the [throttling limits](throttling-limits.md) that apply for each Microsoft Graph resource.
- [Training module: Optimize network traffic with Microsoft Graph](/training/modules/optimize-network-traffic)
