---
title: "Error codes for workbooks and charts APIs"
description: "Lists and describes the error codes that are returned by the workbooks and charts APIs in Microsoft Graph when a request sent through the API fails."
author: "grangeryy"
ms.localizationpriority: medium
ms.prod: "excel"
---

# Error codes for workbooks and charts APIs

This article describes error codes that are returned by the workbooks and charts APIs in Microsoft Graph when a request sent through these APIs fails. For details about handling error responses from workbooks and charts APIs in Microsoft Graph, see [Error handling for Excel APIs in Microsoft Graph](workbook-error-handling.md). For more details about error responses and resource types in Microsoft Graph, see [Microsoft Graph error responses and resource types](errors.md).

## Error codes and messages

The following table lists the current error codes and messages. The service might add new error codes at any time.

| Status Code | Error Code            | Error Message                                                                                                                     |
|:------------|:----------------------|:----------------------------------------------------------------------------------------------------------------------------------|
| 400         | `badRequest`          | The request is malformed or incorrect.                                                                                            |
| 401         | `unauthorized`        | The caller is not authenticated.                                                                                                  |
| 403         | `forbidden`           | The caller doesn't have permission to perform the action.                                                                         |
| 404         | `notFound`            | The resource could not be found.                                                                                                  |
| 405         | `methodNotAllowed`    | The HTTP method in the request is not allowed on the resource.                                                                    |
| 409         | `conflict`            | The current state conflicts with what the request expects.                                                                        |
| 413         | `payloadTooLarge`     | The request size exceeds the maximum limit.                                                                                       |
| 429         | `tooManyRequests`     | The app or user has been throttled.                                                                                               |
| 500         | `internalServerError` | An internal server error occurred while processing the request.                                                                   |
| 501         | `notImplemented`      | The requested feature isn’t implemented.                                                                                          |
| 502         | `badGateway`          | The server encountered a temporary error and could not complete your request.                                                     |
| 503         | `serviceUnavailable`  | The service is not available. Please try your request again.                                                                      |
| 504         | `gatewayTimeout`      | The server, while acting as a proxy, did not receive a timely response from the upstream server in order to complete the request. |

## Detailed error codes

The following are required error codes that your app might encounter within the first-level of nested **innerError** objects. The service might add new error codes at any time.

- `accessConflict`
- `badRequestUncategorized`
- `conflictUncategorized`
- `forbiddenUncategorized`
- `gatewayTimeoutUncategorized`
- `internalServerErrorUncategorized`
- `invalidSessionAccessConflict`
- `invalidSessionAuthentication`
- `invalidSessionNotFound`
- `invalidSessionReCreatable`
- `invalidSessionRestricted`
- `invalidSessionUnexpected`
- `invalidSessionUnsupportedWorkbook`
- `methodNotAllowedUncategorized`
- `notFoundUncategorized`
- `notImplementedUncategorized`
- `payloadTooLargeUncategorized`
- `serviceUnavailableUncategorized`
- `tooManyRequestsUncategorized`
- `transientFailure`
- `unauthorizedUncategorized`
- `unsupportedWorkbook`

For examples of optional error codes within the first-level of nested **innerError** objects, see [Optional second-level error code examples](workbook-error-handling.md#optional-second-level-error-code-examples).

> [!NOTE]
> The **innerError** object might recursively contain more deeper **innerError** objects with additional, more specific error codes. These deeper **innerError** codes are intended for diagnostics purpose only.

<!-- {
  "type": "#page.annotation",
  "description": "Workbook error code and message",
  "keywords": "error response, error codes, innerError, message, code",
  "section": "documentation",
  "tocPath": ""
} -->

## See also

- [Use the Excel REST API](/graph/api/resources/excel)