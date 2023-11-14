---
title: "Microsoft Graph error responses and resource types"
description: "Learn about errors that can be returned in Microsoft Graph responses. Errors are returned using standard HTTP status codes and a JSON error response object."
ms.localizationpriority: high
---

# Microsoft Graph error responses and resource types

Errors in Microsoft Graph are returned using standard HTTP status codes, and a JSON error response object.

## HTTP status codes

The following table lists and describes the HTTP status codes that can be returned.

<!-- markdownlint-disable MD033 -->

| Status code | Status message                  | Description                                                                                                                            |
|:------------|:--------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------|
| 400         | Bad Request                     | Can't process the request because it's malformed or incorrect.                                                                       |
| 401         | Unauthorized                    | Required authentication information is either missing or not valid for the resource.                                                   |
| 402         | Payment Required                | The [payment requirements](metered-api-list.md) for the API haven't been met.                                                  |
| 403         | Forbidden                       | Access is denied to the requested resource. The user might not have enough permission or might not have a required license. <br /><br /> **Important:** If conditional access policies are applied to a resource, an `HTTP 403; Forbidden error=insufficient_claims` message may be returned. For more information on Microsoft Graph and conditional access, see [Developer Guidance for Microsoft Entra Conditional Access](/azure/active-directory/develop/active-directory-conditional-access-developer).  |
| 404         | Not Found                       | The requested resource doesn’t exist.                                                                                                  |
| 405         | Method Not Allowed              | The HTTP method in the request isn't allowed on the resource.                                                                         |
| 406         | Not Acceptable                  | This service doesn’t support the format requested in the Accept header.                                                                |
| 409         | Conflict                        | The current state conflicts with what the request expects. For example, the specified parent folder might not exist.                   |
| 410         | Gone                            | The requested resource is no longer available at the server.                                               |
| 411         | Length Required                 | A Content-Length header is required on the request.                                                                                    |
| 412         | Precondition Failed             | A precondition provided in the request (such as an if-match header) doesn't match the resource's current state.                       |
| 413         | Request Entity Too Large        | The request size exceeds the maximum limit.                                                                                            |
| 415         | Unsupported Media Type          | The content type of the request is a format that isn't supported by the service.                                                      |
| 416         | Requested Range Not Satisfiable | The specified byte range is invalid or unavailable.                                                                                    |
| 422         | Unprocessable Entity            | Can't process the request because it is semantically incorrect.                                                                        |
| 423         | Locked                          | The resource that is being accessed is locked.                                                                                          |
| 429         | Too Many Requests               | Client application has been throttled and shouldn't attempt to repeat the request until an amount of time has elapsed.                |
| 500         | Internal Server Error           | There was an internal server error while processing the request.                                                                       |
| 501         | Not Implemented                 | The requested feature isn’t implemented.                                                                                               |
| 503         | Service Unavailable             | The service is temporarily unavailable for maintenance or is overloaded. You may repeat the request after a delay, the length of which may be specified in a Retry-After header.|
| 504         | Gateway Timeout                 | The server, while acting as a proxy, didn't receive a timely response from the upstream server it needed to access in attempting to complete the request. |
| 507         | Insufficient Storage            | The maximum storage quota has been reached.                                                                                            |
| 509         | Bandwidth Limit Exceeded        | Your app has been throttled for exceeding the maximum bandwidth cap. Your app can retry the request again after more time has elapsed. |

<!-- markdownlint-enable MD033 -->

The error response is a single JSON object that contains a single property
named **error**. This object includes all the details of the error. You can use the information returned here instead of or in addition to the HTTP status code. The following is an example of a full JSON error body.

<!-- { "blockType": "ignored", "@odata.type": "odata.error", "expectError": true, "name": "example-error-response" } -->
```json
{
  "error": {
    "code": "badRequest",
    "message": "Uploaded fragment overlaps with existing data.",
    "innerError": {
      "code": "invalidRange",
      "request-id": "request-id",
      "date": "date-time"
    }
  }
}
```

<!--<a name="msg_error_resource_type"> </a> -->

## Error resource type

The error resource is returned whenever an error occurs in the processing of a request.

Error responses follow the definition in the 
[Microsoft REST API Guidelines](https://github.com/microsoft/api-guidelines/blob/vNext/Guidelines.md#7102-error-condition-responses).

### JSON representation

The error resource is composed of a single resource:

<!-- { "blockType": "resource" } -->
```json
{
  "error": {
    "code": "string",
    "message": "string",
    "innererror": { 
      "code": "string"
    },
    "details": []
  }
}
```

| Property name  | Value                  | Description                                                                                                |
|:---------------|:-----------------------|:-----------------------------------------------------------------------------------------------------------|
| **code**       | string                 | An error code string for the error that occurred                                                            |
| **message**    | string                 | A developer ready message about the error that occurred. This shouldn't be displayed to the user directly. |
| **innererror** | error object           | Optional. An additional error object that might be more specific than the top-level error.                     |
| **details**    | error object           | Optional. A list of additional error objects that might provide a breakdown of multiple errors encountered while processing the request. |

<!--<a name="msg_properties"> </a> -->

#### Properties

The **code** property contains a machine-readable value that you can take a dependency on in your code.  

The **innererror** object might recursively contain more **innererror** objects
with additional, more specific error **codes** properties. When handling an error, apps
should loop through all the nested error codes that are available and use the most detailed
one that they understand.

The **message** property is a human-readable value that describes the error condition. Don't take any dependency on the content of this value in your code. 

The **message** property at the root contains an error message intended for the
developer to read. Error messages aren't localized and shouldn't be displayed
directly to the user. When handling errors, your code shouldn't take any dependency on the **message** property values because they can change at any time, and they often contain
dynamic information specific to the failed request. You should only code
against error codes returned in **code** properties.

The **details** property is an optional array of error objects that have the same JSON format as the top-level error object.
In the case of a request that is composed of multiple operations, such as a bulk or batch operation, it might be necessary to return an independent error for each operation. In this case, the **details** list is populated with these individual errors.

<!-- {
  "type": "#page.annotation",
  "description": "Understand the error format for the API and error codes.",
  "keywords": "error response, error, error codes, innererror, message, code",
  "section": "documentation",
  "suppressions": [
    " Warning: /concepts/errors.md:
      Multiple resources found in file, but we only support one per file. 'odata.error,odata.error'. Skipping."
  ],
  "tocPath": "Misc/Error Responses"
} -->
