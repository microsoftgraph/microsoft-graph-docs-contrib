---
title: "Error handling for Excel APIs in Microsoft Graph"
description: "Error handling instructions for Excel APIs in Microsoft Graph"
author: "grangeryy"
localization_priority: Normal
ms.prod: "excel"
---

# Error handling for Excel APIs in Microsoft Graph

This article describes general instructions and suggestions to handle errors that are returned by the Excel APIs in Microsoft Graph when a request sent through the API fails.

## Error response and error object

There are two kinds of error responses in Excel Graph. One kind is the regular error response, which looks like the following example.
>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 <HTTP status code>
Content-type: application/json

{
  "error": <Error object>
}
```

The other kind of error response comes from long running operation pattern with the a `200 OK` HTTP status code and `failed` operation status in response body, which looks like following example.
>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "status": "failed",
  "error": <Error object>
}
```

For above two error responses, the error object has the following structure:

```json
{
  "code": "string",
  "message": "string",
  "innerError": { "@odata.type": "odata.error" }
}
```

The `innerError` object might recursively contain more `innerError` objects with additional, more specific error codes. For example, error object may contain more detailed error information in the second-level error code and message below.

```json
{
  "code": <Top-level error code>,
  "message": <Top-level error message>,
  "innerError" (optional): {
    "code": <Second-level error code>,
    "message":<Second-level error message>,
    "innerError" (optional):{ "@odata.type": "odata.error" }
  }
}
```

## Steps to handle error response

To better handle errors occurs in Excel graph, here are the general steps we suggest to follow.

### 1. Determine whether it is a long running operation error

Before handling an error, the first step is to determine whether the error response is from long running operation pattern or regular pattern. A long running operation error will return a `200 OK` HTTP status code and `failed` operation status in response body, while regular error response will return corresponding HTTP error status code.

### 2. Parse second-level error code

For both long running operation pattern and regular pattern, we suggest you to act according the instructions provided for second-level error first. The error code is case insensitive. We list suggested actions for some of the errors. The service might add new error codes at any time.

| Code                               | Suggestion
|:-----------------------------------|:----------------------------------------------------------
| **accessConflict**   |The Graph client is not expected to resend the failed request until the conflict is resolved. An end-user may choose to manually perform the same operations with Excel Online to get more details of the conflict.
| **badRequestUncategorized**               | The Graph client is not expected to resend the failed request.
| **conflictUncategorized**                   | The Graph client is not expected to resend the failed request until the conflict is resolved. An end-user may choose to manually perform the same operations with Excel Online to get more details of the conflict.
| **forbiddenUncategorized**                    | The Graph client is not expected to resend the failed request. An end-user may choose to manually perform the same operations with Excel Online to get more details of the restrictions.
| **gatewayTimeoutUncategorized**         | The Graph client is not expected to resend the failed request.
| **internalServerErrorUncategorized**       | The Graph client is not expected to resend the failed request. If a session is specified in the failed request, further access to the session is not expected either.
| **invalidSessionAccessConflict**             | Further access to the session specified in the failed request is not expected. Recreating sessions with the same createSession request is not expected until the conflict is resolved. Recreating sessions with a different createSession request may or may not succeed. An end-user may choose to manually perform the same operations with Excel Online to get more details of the conflict.
| **invalidSessionAuthentication**         | Further access to the session specified in the failed request is not expected. Recreating sessions with the same createSession request is not expected until appropriate authentication information is provided.
| **invalidSessionNotFound**         | Further access to the session specified in the failed request is not expected. Recreating sessions with the same createSession request is not expected.
| **invalidSessionReCreatable**             | The Graph client may try to recreate a session and resume the work. Further access to the session specified in the failed request is not expected.
| **invalidSessionRestricted**          | Further access to the session specified in the failed request is not expected. Recreating sessions with the same createSession request is not expected until the restrictions or configurations blocking the request changes. Recreating sessions with a different createSession request may or may not succeed. An end-user may choose to manually perform the same operations with Excel Online to get more details of the restrictions.
| **invalidSessionUnexpected**                | Further access to the session specified in the failed request is not expected. Recreating sessions with the same createSession request is not expected. Recreating sessions with a different createSession request may or may not succeed.
| **invalidSessionUnsupportedWorkbook**              | Further access to the session specified in the failed request is not expected. Recreating sessions with the same createSession request is not expected until the unsupported factors are removed. Recreating sessions with a different createSession request may or may not succeed. An end-user may choose to manually perform the same operations with Excel Online to get more details of the unsupported factors, or with Excel Desktop where the workbook might be supported.
| **methodNotAllowedUncategorized**              | The Graph client is not expected to resend the failed request.
| **notFoundUncategorized**             | The Graph client is not expected to resend the failed request.
| **notImplementedUncategorized**            | The Graph client is not expected to resend the failed request.
| **payloadTooLargeUncategorized**              | The Graph client is not expected to resend the failed request.
| **serviceUnavailableUncategorized**      | The Graph client is not expected to resend the failed request.
| **tooManyRequestsUncategorized**             | The Graph client is not expected to resend the failed request.
| **transientFailure**           | The Graph client is not expected to resend the failed request.
| **unauthorizedUncategorized**         | The Graph client is not expected to resend the failed request.
| **unsupportedWorkbook**         | The Graph client is not expected to resend the failed request until the unsupported factors are removed.

### 3. Parse top-level error code

If you can't find corresponding second-level error codes or messages in detailed errors listed in [Error codes](/concepts/workbook-error-codes.md), we suggest you to act according the instructions provided for top-level error then. Details on the top-level error codes and messages can be found in [Error codes](/concepts/workbook-error-codes.md)

### 4. Parse status code

If the error code you encounter is not in either of the second-level list or top-level list. We suggest to act according to HTTP status code.

<!-- {
  "type": "#page.annotation",
  "description": "Error handling in Excel Graph.",
  "keywords": "error response, error object, error codes, innerError, error handling",
  "section": "documentation",
  "tocPath": ""
} -->
