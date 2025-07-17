---
title: "Manage sessions and persistence in Excel"
description: "Learn how to use the Excel API in Microsoft Graph in the most efficient way possible. Learn about the three modes to call the APIs and the related request types."
ms.localizationpriority: medium
author: "lumine2008"
ms.subservice: "excel"
ms.date: 11/07/2024
---

# Manage sessions and persistence in Excel

If your application needs to make more than one or two calls to the Excel API in Microsoft Graph, create a session and pass the session ID with each request. The presence of a session ID in the requests ensures that you are using the Excel API in the most efficient way possible.

Excel APIs are called in one of three modes:

- **Persistent session:** All changes made to the workbook are persisted (saved) to the workbook. This is the most efficient and best-performing way to use the Excel API.

- **Non-persistent session:** Changes made by the API are not saved to the source location. Instead, the Excel backend server keeps a temporary copy of the file that reflects the changes made during that particular API session. When the Excel session expires, the changes are lost. This mode is useful for apps that need to do analysis or obtain the results of a calculation or a chart image, but do not need to affect the document state.

- **Sessionless:** The API calls do not pass a session ID. The Excel servers have to locate the server's copy of the workbook for each operation. This is not an efficient way to call the Excel API, but it is suitable for making certain types of isolated requests.

To represent the session in the API, use the `workbook-session-id: {session-id}` header.

> [!NOTE]
> The session header is not required for an Excel API to work. However, we recommend that you use the session header to improve performance. If you don't use a session header, changes made during the API call _are_ persisted to the file.  

## Request types

Suggested [error handling](workbook-error-handling.md) for Excel APIs is based on request type, error code, and status code. The following are the request types:

- **CreateSession request:** Used to create either a persistent or a non-persistent session. In a successful response, the session ID will be returned in the **id** property in the response body. For details, see [Create session](/graph/api/workbook-createsession).
- **Sessionful request:** Subsequent requests that follow a CreateSession request. They usually include a `workbook-session-id: {session-id}` header. The exception is a poll status request, which uses the long-running operation pattern. For details, see [Work with APIs that take a long time to complete](./workbook-best-practice.md#work-with-apis-that-take-a-long-time-to-complete).
- **Sessionless request:** Used in Sessionless mode. These requests don't have a `workbook-session-id: {session-id}` header.  

## Next steps

To learn how to create and use sessions, see the [Create session reference topic](/graph/api/workbook-createsession).

## Related content

* [Write to an Excel workbook using Microsoft Graph](excel-write-to-workbook.md)
* [Use workbook functions in Excel with Microsoft Graph](excel-use-functions.md)
* [Update a range’s format in Excel with Microsoft Graph](excel-update-range-format.md)
* [Display a chart image in Excel with Microsoft Graph](excel-display-chart-image.md)
* [Use the Excel REST API](/graph/api/resources/excel)