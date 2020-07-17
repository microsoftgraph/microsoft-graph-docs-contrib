---
title: "Error codes for Excel APIs in Microsoft Graph"
description: "Error codes and messages for Excel APIs in Microsoft Graph"
author: "grangeryy"
localization_priority: Normal
ms.prod: "excel"
---

# Error codes for Excel APIs in Microsoft Graph

This article describes error codes that are returned by the Excel APIs in Microsoft Graph when a request sent through the API fails.

The error object includes the following properties:

```json
{
  "code": "string",
  "message": "string",
  "innerError": { "@odata.type": "odata.error" }
}
```

| Property name  | Value                  | Description                                                                                             |
|:---------------|:-----------------------|:-----------------------------------------------------------------------------------------------------------|
| **code**       | string                 | An error code string for the error that occurred                                                            |
| **message**    | string                 | A developer ready message about the error that occurred. |
| **innerError** | error object           | Optional. Additional error objects that may be more specific than the top level error.|

The `message` property contains an error message intended for the developer to read. Error messages are not localized and shouldn't be displayed directly to the user. When handling errors, your code should not key off of `message` values because they may change at any time, and they often contain dynamic information specific to the failed request. The `innerError` object might recursively contain more `innerError` objects with additional, more specific error codes.

## Top-level error code and message

Below we listed current top-level error codes and messages. The service might add new error codes at any time.

| Code                      | Message
|:--------------------------|:--------------
| **invalidRequest**          | The request is malformed or incorrect. 
| **unauthenticated**  | The caller is not authenticated.
| **accessDenied**      | The caller doesn't have permission to perform the action.
| **resourceNotFound**          | The resource could not be found.
| **methodNotAllowed**        |The HTTP method in the request is not allowed on the resource.
| **conflict**          | The current state conflicts with what the request expects.
| **requestSizeExceeded**       | The request size exceeds the maximum limit.
| **tooManyRequests**     | The app or user has been throttled.
| **internalServerError**            | An internal server error occurred while processing the request.
| **notImplemented**          | The requested feature isn’t implemented.
| **serviceUnavailable**      | The service is not available. Please try your request again. 
| **gatewayTimeout**        | The server, while acting as a proxy, did not receive a timely response from the upstream server in order to complete the request.

## Detailed error codes
The following are some additional errors that your app might encounter within the first level of nested
`innerError` objects. The service might add new error codes at any time.

| Code                               | Message
|:-----------------------------------|:----------------------------------------------------------
| **badRequestUncategorized**               | The request is malformed or incorrect.
| **invalidSessionReCreatable**             | The session specified in the request does not exist or is invalid due to a transient error.
| **invalidSessionAuthentication**         | The session specified in the request is invalid due to an authentication error.
| **invalidSessionRestricted**          | The session specified in the request is invalid due to service configurations or restrictions.
| **invalidSessionNotFound**         | The session specified in the request is invalid because the workbook can’t be found.
| **invalidSessionAccessConflict**             | The session specified in the request is invalid due to conflicts with other clients that are accessing the workbook.
| **invalidSessionUnexpected**                | The session specified in the request is invalid due to an unexpected issue.
| **invalidSessionUnsupportedWorkbook**              | The session specified in the request is invalid because the workbook contains  unsupported features or exceeds the size limit.
| **unauthorizedUncategorized**         | Required authentication information for the resource is either missing or invalid.
| **forbiddenUncategorized**                    | The request is not allowed.
| **notFoundUncategorized**             | The requested resource cannot be found.
| **methodNotAllowedUncategorized**              | The HTTP method specified in the request is not allowed on the resource.
| **conflictUncategorized**                   | The current state conflicts with what the request expects.
| **accessConflict**   |The request failed due to conflicts with other clients that are accessing the workbook.
| **payloadTooLargeUncategorized**              | The request payload exceeds the size limit.
| **tooManyRequestsUncategorized**             | The client app or user has been throttled. Please try your request again.
| **internalServerErrorUncategorized**       | An unspecified error has occurred.
| **notImplementedUncategorized**            | The requested feature is not currently implemented.
| **unsupportedWorkbook**         | The request failed. The workbook contains unsupported features or exceeds the size limit.
| **serviceUnavailableUncategorized**      | The service is temporarily unavailable or is overloaded. Please try your request again.
| **transientFailure**           | The request failed due to a transient error. Please try your request again.
| **gatewayTimeoutUncategorized**         | The service wasn’t able to complete the request within the time limit.

<!-- {
  "type": "#page.annotation",
  "description": "Workbook error code and message",
  "keywords": "error response, error codes, innerError, message, code",
  "section": "documentation",
  "tocPath": ""
} -->
