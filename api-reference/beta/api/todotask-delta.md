---
title: "todoTask: delta"
description: "Get a set of todoTask resources that have been added, deleted, or updated in a specified todoTaskList."
ms.localizationpriority: medium
author: "avijityadav"
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 06/22/2024
---

# todoTask: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a set of [todoTask](../resources/todotask.md) resources that have been added, deleted, or updated in a specified [todoTaskList](../resources/todotasklist.md).

A **delta** function call for **todoTask** resources in a **todoTaskList** is similar to a GET request, except that by appropriately applying [state tokens](/graph/delta-query-overview) in one or more of these calls, you can query for incremental changes in the **todoTask** in that **todoTaskList**. This allows you to maintain and synchronize a local store of a user's **todoTask** resources without having to fetch the entire set from the server every time.  

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "todotask_delta" } -->
[!INCLUDE [permissions-table](../includes/permissions/todotask-delta-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/todo/lists/{id}/tasks/delta
GET /users/{id|userPrincipalName}/todo/lists/{todoTaskListId}/tasks/delta
```

## Query parameters

Tracking changes in a **todoTask** collection incurs a round of one or more **delta** function calls. If you use any query parameter 
(other than `$deltatoken` and `$skiptoken`), you must specify 
it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters 
into the token portion of the `@odata.nextLink` or `@odata.deltaLink` URL provided in the response. 
You only need to specify any desired query parameters once upfront. 
In subsequent requests, simply copy and apply the `@odata.nextLink` or `@odata.deltaLink` URL from the previous response, as that URL already 
includes the encoded, desired parameters.

| Query parameter	   | Type	|Description|
|:---------------|:--------|:----------|
| $deltatoken | string | A [state token](/graph/delta-query-overview) returned in the `@odata.deltaLink` URL of the previous **delta** function call for the same todoTask collection, indicating the completion of that round of change tracking. Save and apply the entire `@odata.deltaLink` URL including this token in the first request of the next round of change tracking for that collection.|
| $skiptoken | string | A [state token](/graph/delta-query-overview) returned in the `@odata.nextLink` URL of the previous **delta** function call, indicating there are further changes to be tracked in the same todoTask collection. |

### OData query parameters

- You can use a `$select` query parameter as in any GET request to specify only the properties your need for best performance. The 
_id_ property is always returned. 
- Delta query support `$select`, `$top`, and `$expand` for todoTask. 
- There is limited support for `$filter` and `$orderby`:
  * The only supported `$filter` expressions are `$filter=receivedDateTime+ge+{value}` 
  or `$filter=receivedDateTime+gt+{value}`.
  * The only supported `$orderby` expression is `$orderby=receivedDateTime+desc`. If you do not include
  an `$orderby` expression, the return order is not guaranteed. 
- There is no support for `$search`.

## Request headers
| Name       | Type | Description |
|:---------------|:----------|:----------|
| Authorization  | string  |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | string  | application/json. Required. |
| Prefer | string  | odata.maxpagesize={x}. Optional. |

## Response

If successful, this method returns a `200 OK` response code and [todoTask](../resources/todotask.md) collection object in the response body.

## Example
### Request
To track changes in the **todoTask** resources in a **todoTaskList** since the last round of change tracking, you would make one or more **delta** function calls to get the set of incremental changes. The following example shows how to begin a next round of change tracking, using the URL in the `@odata.deltaLink` returned from the last **delta** function call of the last round, which contains a `deltaToken`. This **delta** function call limits the maximum number of **todoTask** in the response body to 2.
 

### HTTP Request
<!-- { "blockType": "ignored" } -->
``` http
GET https://graph.microsoft.com/beta/me/todo/lists/gDbc8U7HGwADDZocJgAAAA==/tasks/delta?$deltatoken=w0vf2jHg2mBXU-I2AK0FSWl0dopNtG8u5YoM
Prefer: odata.maxpagesize=2
```


### Response
If the request is successful, the response would include a state token, which is either a _skipToken_  
(in an _@odata.nextLink_ response header) or a _deltaToken_ (in an _@odata.deltaLink_ response header). 
Respectively, they indicate whether you should continue with the round or you have completed 
getting all the changes for that round.

The response below shows a _skipToken_ in an _@odata.nextLink_ response header.

Note: The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "@odata.deltaLink":"https://graph.microsoft.com/beta/me/todo/lists/gDbc8U7HGwADDZocJgAAAA==/tasks/delta?$deltatoken=MoVMZ_DzHG4AhT3WE8VioVS1IXZJ-ArqK5fknOjnKFY",
   "value":[
      {
         "@odata.etag":"W/\"4rfRVIPi9EqXgDbc8U7HGwADLLQ9xQ==\"",
         "importance":"normal",
         "isReminderOn":false,
         "status":"notStarted",
         "title":"empty task3",
         "createdDateTime":"2020-08-12T04:54:29.1925206Z",
         "lastModifiedDateTime":"2020-08-12T04:54:29.4903939Z",
         "id":"AAMkADMwNTcyZjQzLTdkMGItNDdjMy04ZTYwLTJhYmUzNGI5ZDEwMwBGAAAAAAB5M0K0qlJySLOAgV22zPnuBwDit9FUg_L0SpeANtzxTscbAAMNmhwmAADit9FUg_L0SpeANtzxTscbAAMxlnrYAAA=",
         "body":{
            "content":"",
            "contentType":"text"
         }
      }
   ]
}
```

## Related content

- [Microsoft Graph delta query](/graph/delta-query-overview)

