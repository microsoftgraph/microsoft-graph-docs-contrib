---
title: "Manage sessions and persistence in Excel with Microsoft Graph"
description: "If your application needs to make more than one or two calls to the Excel API, you should create a session and pass the session Id with each request. The presence of a session Id in the requests ensures that you are using the Excel API in the most efficient way possible."
localization_priority: Normal
author: "lumine2008"
ms.prod: "excel"
---

# Manage sessions and persistence in Excel with Microsoft Graph

If your application needs to make more than one or two calls to the Excel API, you should create a session and pass the session Id with each request. The presence of a session Id in the requests ensures that you are using the Excel API in the most efficient way possible.

Excel APIs are called in one of three modes:

1. **Persistent session**  All changes made to the workbook are persisted (saved) to the workbook. This is the most efficient and best-performing way to use the Excel API.
2. **Non-persistent session**  Changes made by the API are not saved to the source location. Instead, the Excel backend server keeps a temporary copy of the file that reflects the changes made during that particular API session. When the Excel session expires, the changes are lost. This mode is useful for apps that need to do analysis or obtain the results of a calculation or a chart image, but do not need to affect the document state.
3. **Sessionless**  The API calls do not pass a session Id. The Excel servers have to locate the server's copy of the workbook for each operation. This is not an efficient way to call the Excel API, but it is suitable for making certain types of isolated requests.

To represent the session in the API, use the `workbook-session-id: {session-id}` header.

>**Note:** The session header is not required for an Excel API to work. However, we recommend that you use the session header to improve performance. If you don't use a session header, changes made during the API call _are_ persisted to the file.  

## Request type
Suggested [error handling](workbook-error-handling.md) in Excel Graph is based on request type, error code and status code. Here is the definition for request types in Excel Graph.

- **CreateSession request**: It's used to create either a persistent session or a non-persistent session as mentioned above. In the successful response, session Id will be returned by `id` in response body. See [create session](/graph/api/workbook-createsession?view=graph-rest-1.0) for more details.
- **Sessionful request**: Subsequent requests follow with CreateSession request, they usually have `workbook-session-id: {session-id}` header in request. The exception is poll stataus request, which is in long-running operation pattern. See [working with APIs that take a long time to complete](https://docs.microsoft.com/en-us/graph/workbook-best-practice#working-with-apis-that-take-a-long-time-to-complete) for details.
- **Sessionless request**: Sessionless request is used in Sessionless mode, which doesn't have `workbook-session-id: {session-id}` header.  



## Next step
To learn how to create and use sessions, see the [Create session reference topic](/graph/api/workbook-createsession?view=graph-rest-1.0).

## See also
* [Write to an Excel workbook using Microsoft Graph](excel-write-to-workbook.md)
* [Use workbook functions in Excel with Microsoft Graph](excel-use-functions.md)
* [Update a range’s format in Excel with Microsoft Graph](excel-update-range-format.md)
* [Display a chart image in Excel with Microsoft Graph](excel-display-chart-image.md)
* [Use the Excel REST API](/graph/api/resources/excel?view=graph-rest-1.0)
