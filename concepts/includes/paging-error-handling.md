---
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: jugalk
ms.localizationpriority: high
ms.topic: include
ms.subservice: non-product-specific
ms.date: 04/02/2025
---

### Avoiding DirectoryPageTokenNotFoundException errors

When paging through large sets of data, you might encounter the `DirectoryPageTokenNotFoundException` error, which prevents the client app from successfully retrieving subsequent pages. This error occurs when the client app uses a token from a retry operation to request the next page of results.

To avoid this error, don't use tokens from retry operations for subsequent page requests as these tokens aren't guaranteed to be valid for future requests. Instead, persist the token from the last successful response and use it for the next page request. Therefore, the `@odata.nextLink` value used for the retry should be used for the subsequent page request.

#### Example scenario

1. Retrieve Page 1 and receive a token "Token1".
1. Use "Token1" to request Page 2.
1. If you encounter a network error, retry the request.
1. During the retry, you receive a new token "RetryToken".
1. Do not use "RetryToken" to request Page 3, as it might cause the `DirectoryPageTokenNotFoundException` error.
1. Instead, use "Token1" (the token from the last successful non-retry response) to request Page 3.