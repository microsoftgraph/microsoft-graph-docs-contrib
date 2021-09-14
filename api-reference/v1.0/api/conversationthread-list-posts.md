---
title: "List posts"
description: "Get the posts of the specified thread. You can specify both the parent conversation and the thread, or, "
ms.localizationpriority: medium
author: "dkershaw10"
ms.prod: "groups"
doc_type: apiPageType
---

# List posts

Namespace: microsoft.graph

Get the posts of the specified thread. You can specify both the parent conversation and the thread, or, 
you can specify the thread without referencing the parent conversation.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.Read.All, Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Group.Read.All, Group.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /groups/{groupId}/threads/{threadId}/posts
GET /groups/{groupId}/conversations/{conversationId}/threads/{threadId}/posts

```
## Optional query parameters
This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response. `$expand` is also supported to expand specific relationships and only one relationship can be expanded in a single request.
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [Post](../resources/post.md) objects in the response body.
## Example
##### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_posts"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/threads/AAQkADI5YzgxODgyLTExZDgtNDhkMS1iZDRjLTBhZGZiN2ExYWQxNwMkABAADW7fw6FZNEuyjrGA9R8SshAADW7fw6FZNEuyjrGA9R8Ssg==/posts
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-posts-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-posts-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-posts-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-posts-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
Here is an example of the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.post",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groups('02f3bafb-448c-487c-88c2-5fd65ce49a41')/threads('AAQkADI5YzgxODgyLTExZDgtNDhkMS1iZDRjLTBhZGZiN2ExYWQxNwMkABAADW7fw6FZNEuyjrGA9R8SshAADW7fw6FZNEuyjrGA9R8Ssg%3D%3D')/posts",
  "value": [
    {
      "@odata.etag": "W/\"CQAAABYAAACWM1XFF4buR6Xp/9aBq6+wAAAAAAEK\"",
      "id": "AAMkADI5YzgxODgyLTExZDgtNDhkMS1iZDRjLTBhZGZiN2ExYWQxNwBGAAAAAAAmtAlgzc6xQZmiHzuqNLQ8BwCWM1XFF4buR6Xp-9aBq6_wAAAAAAEMAACWM1XFF4buR6Xp-9aBq6_wAAAAAAk9AAA=",
      "createdDateTime": "2021-04-14T07:01:07Z",
      "lastModifiedDateTime": "2021-04-14T07:01:08Z",
      "changeKey": "CQAAABYAAACWM1XFF4buR6Xp/9aBq6+wAAAAAAEK",
      "categories": [],
      "receivedDateTime": "2021-04-14T07:01:07Z",
      "hasAttachments": false,
      "body": {
        "contentType": "html",
        "content": "<html><body><div><div style=\"direction:ltr;\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"x_bodyTable\" style=\"vertical-align:top;width:100%;height:100%;border-spacing:0;border-collapse:collapse;margin:0;padding:0;border-width:0;box-sizing:border-box;\"><tr style=\"vertical-align:top;margin:0;padding:0;border-width:0;box-sizing:border-box;\"><td id=\"x_bodyCell\" style=\"vertical-align:top;direction:ltr;width:100%;height:100%;margin:0;padding:0;border-width:0;box-sizing:border-box;\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"x_content\" style=\"font-family:Segoe UI,Tahoma,Microsoft Sans Serif,Verdana,sans-serif;vertical-align:top;border-spacing:0;border-collapse:collapse;margin:0;padding:0;border-width:0;box-sizing:border-box;\"><tr style=\"vertical-align:top;margin:0;padding:0;border-width:0;box-sizing:border-box;\"><td style=\"font-family:Segoe UI,Tahoma,Microsoft Sans Serif,Verdana,sans-serif;vertical-align:top;height:64px;margin:0;padding:0 0 20px 0;border-width:0;box-sizing:border-box;\"><div style=\"color:#0072C6;font-size:18pt;vertical-align:top;margin:0;padding:0;border-width:0;box-sizing:border-box;\">Welcome to the Contoso Life group...."
      },
      "from": {
        "emailAddress": {
          "name": "Contoso Life",
          "address": "contosolife@M365x435773.onmicrosoft.com"
        }
      },
      "sender": {
        "emailAddress": {
          "name": "Contoso Life",
          "address": "contosolife@M365x435773.onmicrosoft.com"
        }
      }
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List posts",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
