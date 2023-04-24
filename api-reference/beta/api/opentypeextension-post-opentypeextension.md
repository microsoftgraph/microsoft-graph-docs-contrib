---
title: "Create openTypeExtension"
description: "Create an open extension (openTypeExtension object) and add custom properties"
ms.localizationpriority: medium
author: "dkershaw10"
doc_type: apiPageType
ms.prod: "extensions"
---

# Create openTypeExtension

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi-sharedfeature](../includes/todo-deprecate-basetaskapi-sharedfeature.md)]

Create an open extension ([openTypeExtension](../resources/opentypeextension.md) object) and add custom properties in a new or existing instance of a resource. You can [create an open extension](/graph/api/opentypeextension-post-opentypeextension) in a resource instance and store custom data to it all in the same operation, except for specific resources. See [known limitations of open extensions](/graph/known-issues#extensions) for more information.

The table in the [Permissions](#permissions) section lists the resources that support open extensions.

> **Note:** If you're creating open extensions on Outlook resources, see **Outlook-specific considerations** in [openTypeExtension resource type](../resources/opentypeextension.md#outlook-specific-considerations).

## Permissions

Depending on the resource you're creating the extension in and the permission type (delegated or application) requested, the permission specified in the following table is the least privileged required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, search for the following permissions in [Permissions](/graph/permissions-reference).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
| [device](../resources/device.md) | Directory.AccessAsUser.All | Not supported | Device.ReadWrite.All |
| [event](../resources/event.md) | Calendars.ReadWrite | Calendars.ReadWrite | Calendars.ReadWrite |
| [group](../resources/group.md) | Group.ReadWrite.All | Not supported | Group.ReadWrite.All |
| [group event](../resources/event.md) | Group.ReadWrite.All | Not supported | Not supported |
| [group post](../resources/post.md) | Group.ReadWrite.All | Not supported | Group.ReadWrite.All |
| [message](../resources/message.md) | Mail.ReadWrite | Mail.ReadWrite | Mail.ReadWrite | 
| [organization](../resources/organization.md) | Organization.ReadWrite.All | Not supported | Organization.ReadWrite.All |
| [personal contact](../resources/contact.md) | Contacts.ReadWrite | Contacts.ReadWrite | Contacts.ReadWrite |
| [todoTask](../resources/todotask.md) | Tasks.ReadWrite | Tasks.ReadWrite | Not supported |
| [todoTaskList](../resources/todotasklist.md)  | Tasks.ReadWrite | Tasks.ReadWrite | Not supported |
| [user](../resources/user.md) | User.ReadWrite | User.ReadWrite | User.ReadWrite.All |
| [baseTask](../resources/basetask.md) (deprecated) | Tasks.ReadWrite | Tasks.ReadWrite | Not supported |
| [baseTaskList](../resources/basetasklist.md) (deprecated) | Tasks.ReadWrite | Tasks.ReadWrite | Not supported |
<!--
| [administrativeUnit](../resources/administrativeUnit.md) | AdministrativeUnit.ReadWrite.All | Not supported | AdministrativeUnit.ReadWrite.All | -->

## HTTP request

### Create an extension in a new resource instance

Use the same REST request that you use to create the instance.

<!-- { "blockType": "ignored" } -->
```http
POST /users/{userId|userPrincipalName}/events
POST /users/{userId|userPrincipalName}/messages
POST /groups/{userId}/events
POST /groups/{userId}/threads/{threadId}/posts/{postId}/reply
POST /users/{userId|userPrincipalName}/contacts
POST /users/{userId|userPrincipalName}/todo/lists/{listId}/tasks
POST /users/{userId|userPrincipalName}/todo/lists
POST /users/{userId|userPrincipalName}/tasks/lists/{listId}/tasks
POST /users/{userId|userPrincipalName}/tasks/lists
```

>**Note:** This syntax shows some common ways to create the supported resource instances. All other POST syntaxes
that allows you to create these resource instances supports creating open extensions in them in a similar way.

See the [Request body](#request-body) section about including the properties of the new resource instance _and the extension_ in the request body.

### Create an extension in an existing resource instance

Identify the resource instance in the request and do a `POST` to the **extensions** navigation property.

<!-- { "blockType": "ignored" } -->
```http
POST /administrativeunits/{administrativeUnitId}/extensions
POST /devices/{deviceId}/extensions
POST /users/{userId|userPrincipalName}/events/{eventId}/extensions
POST /groups/{groupId}/extensions
POST /groups/{groupId}/events/{eventId}/extensions
POST /groups/{groupId}/threads/{threadId}/posts/{postId}/extensions
POST /users/{userId|userPrincipalName}/messages/{messageId}/extensions
POST /organization/{organizationId}/extensions
POST /users/{userId|userPrincipalName}/contacts/{contactId}/extensions
POST /users/{userId|userPrincipalName}/extensions
POST /users/{userId|userPrincipalName}/todo/lists/{listId}/tasks/{taskId}/extensions
POST /users/{userId|userPrincipalName}/todo/lists/{listId}/extensions
POST /users/{userId|userPrincipalName}/tasks/lists/{listId}/tasks/{taskId}/extensions
POST /users/{userId|userPrincipalName}/tasks/lists/{listId}/extensions
```

>**Note:** This syntax shows some common ways to identify a resource instance, in order to create an
extension in it. All other syntaxes that allows you to identify these resource instances supports creating open extensions in them in a similar way.

See the [Request body](#request-body) section about including _the extension_ in the request body.

## Request headers

| Name       | Value |
|:---------------|:----------|
| Authorization | Bearer {token}. Required. |
| Content-Type | application/json |

## Request body

Provide a JSON body of an [openTypeExtension](../resources/opentypeextension.md), with the following required
name-value pairs and any additional custom data. The data in the JSON payload can be primitive types, or arrays of
primitive types.

| Name       | Value |
|:---------------|:----------|
| @odata.type | microsoft.graph.openTypeExtension |
| extensionName | Unique string |

When creating an extension in a _new_ resource instance, in addition to the
new **openTypeExtension** object, provide a JSON representation of the relevant properties to create such a resource instance.

## Response

### Response code

Depending on the operation, the response code can be `201 Created` or `202 Accepted`.

When you create an extension using the same operation that you use to create a resource instance, the operation returns the same response code that it returns when you use the operation to create the resource instance without the extension.
Refer to the corresponding topics for creating the instance, as listed [above](#create-an-extension-in-a-new-resource-instance).

### Response body

| Scenario       | Resource  | Response body |
|:---------------|:----------|:--------------|
| Creating an extension while explicitly creating a _new_ resource instance | [contact](../resources/contact.md), [event](../resources/event.md), [message](../resources/message.md) | Includes the new instance expanded with the [openTypeExtension](../resources/opentypeextension.md) object. |
| Creating an extension while implicitly creating a resource instance | [post](../resources/post.md) | The response includes only a response code but not a response body. |
| Creating an extension in an _existing_ resource instance | All supported resources | Includes the **openTypeExtension** object. |

## Example

### Request 1

The first example creates a message and an extension in the same call. The request body includes the following:

- The **subject**, **body**, and **toRecipients** properties typical of a new message.
- And for the extension:

  - The type `microsoft.graph.openTypeExtension`.
  - The extension name "Com.Contoso.Referral".
  - Additional data to be stored as three custom properties in the JSON payload: `companyName`, `expirationDate`, and `dealValue`.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_opentypeextension_1"
}-->
```http
POST https://graph.microsoft.com/beta/me/messages
Content-Type: application/json

{
  "subject": "Annual review",
  "body": {
    "contentType": "HTML",
    "content": "You should be proud!"
  },
  "toRecipients": [
    {
      "emailAddress": {
        "address": "rufus@contoso.com"
      }
    }
  ],
  "extensions": [
    {
      "@odata.type": "microsoft.graph.openTypeExtension",
      "extensionName": "Com.Contoso.Referral",
      "companyName": "Wingtip Toys",
      "expirationDate": "2015-12-30T11:00:00.000Z",
      "dealValue": 10000
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-opentypeextension-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-opentypeextension-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-opentypeextension-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-opentypeextension-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-opentypeextension-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response 1

Here is the response for the first example. The response body includes properties of the new message,
and the following for the new extension:

- The **id** property with the fully qualified name of `microsoft.graph.openTypeExtension.Com.Contoso.Referral`.
- The default property **extensionName** specified in the request.
- The custom data specified in the request stored as 3 custom properties.

Note: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Me/messages/$entity",
  "@odata.id": "https://graph.microsoft.com/beta/users('ddfc984d-b826-40d7-b48b-57002df800e5@1717f226-49d1-4d0c-9d74-709fad664b77')/messages
('AAMkAGEbs88AAB84uLuAAA=')",
  "@odata.etag": "W/\"CQAAABYAAACY4MQpaFz9SbqUDe4+bs88AAB88LOj\"",
  "id": "AAMkAGEbs88AAB84uLuAAA=",
  "createdDateTime": "2015-10-30T03:03:43Z",
  "lastModifiedDateTime": "2015-10-30T03:03:43Z",
  "changeKey": "CQAAABYAAACY4MQpaFz9SbqUDe4+bs88AAB88LOj",
  "categories": [ ],
  "receivedDateTime": "2015-10-30T03:03:43Z",
  "sentDateTime": "2015-10-30T03:03:43Z",
  "hasAttachments": false,
  "subject": "Annual review",
  "body": {
    "contentType": "HTML",
    "content": "<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r
\n<meta content=\"text/html; charset=us-ascii\">\r\n</head>\r\n<body>\r\nYou should be proud!\r\n</body>\r
\n</html>\r\n"
  },
  "bodyPreview": "You should be proud!",
  "importance": "Normal",
  "parentFolderId": "AQMkAGEwAAAIBDwAAAA==",
  "sender": null,
  "from": null,
  "toRecipients": [
    {
      "emailAddress": {
        "address": "rufus@contoso.com",
        "name": "John Doe"
      }
    }
  ],
  "ccRecipients": [ ],
  "bccRecipients": [ ],
  "replyTo": [ ],
  "conversationId": "AAQkAGEFGugh3SVdMzzc=",
  "isDeliveryReceiptRequested": false,
  "isReadReceiptRequested": false,
  "isRead": true,
  "isDraft": true,
  "webLink": "https://outlook.office.com/owa/?
ItemID=AAMkAGEbs88AAB84uLuAAA%3D&exvsurl=1&viewmodel=ReadMessageItem",
  "inferenceClassification": "Focused",
  "extensions": [
    {
      "@odata.type": "#microsoft.graph.openTypeExtension",
      "@odata.id": "https://graph.microsoft.com/beta/users('ddfc984d-b826-40d7-b48b-57002df800e5@1717f226-49d1-4d0c-9d74-709fad664b77')/messages
('AAMkAGEbs88AAB84uLuAAA=')/extensions('microsoft.graph.openTypeExtension.Com.Contoso.Referral')",
      "id": "microsoft.graph.openTypeExtension.Com.Contoso.Referral",
      "extensionName": "Com.Contoso.Referral",
      "companyName": "Wingtip Toys",
      "expirationDate": "2015-12-30T11:00:00.000Z",
      "dealValue": 10000
    }
  ]
}
```

****

### Request 2

The second example creates an extension in the specified message. The request body includes the following for the
extension:

- The type `microsoft.graph.openTypeExtension`.
- The extension name "Com.Contoso.Referral".
- Additional data to be stored as 3 custom properties in the JSON payload: `companyName`, `dealValue`, and `expirationDate`.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_opentypeextension_2",
  "sampleKeys": ["AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl==="]
}-->
```http
POST https://graph.microsoft.com/beta/me/messages/AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===/extensions
Content-Type: application/json

{
  "@odata.type" : "microsoft.graph.openTypeExtension",
  "extensionName" : "Com.Contoso.Referral",
  "companyName" : "Wingtip Toys",
  "dealValue" : 500050,
  "expirationDate" : "2015-12-03T10:00:00.000Z"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-opentypeextension-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-opentypeextension-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-opentypeextension-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-opentypeextension-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-opentypeextension-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response 2

Here is the response for the second example. The response body includes the following for the new extension:

- The default property **extensionName**.
- The **id** property with the fully qualified name of `microsoft.graph.openTypeExtension.Com.Contoso.Referral`.
- The custom data to be stored.

<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.openTypeExtension"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Me/messages('AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===')/extensions/$entity",
    "@odata.type": "#microsoft.graph.openTypeExtension",
    "@odata.id": "https://graph.microsoft.com/beta/users('ddfc984d-b826-40d7-b48b-57002df85e00@1717f226-49d1-4d0c-9d74-709fad6677b4')/messages('AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===')/extensions
('microsoft.graph.openTypeExtension.Com.Contoso.Referral')",
    "extensionName": "Com.Contoso.Referral",
    "id": "microsoft.graph.openTypeExtension.Com.Contoso.Referral",
    "companyName": "Wingtip Toys",
    "dealValue": 500050,
    "expirationDate": "2015-12-03T10:00:00.000Z"
}
```

****

### Request 3

The third example creates an extension in the specified group event. The request body includes the following for the
extension:

- The type `microsoft.graph.openTypeExtension`.
- The extension name "Com.Contoso.Deal".
- Additional data to be stored as 3 custom properties in the JSON payload: `companyName`, `dealValue`, and `expirationDate`.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_opentypeextension_3",
  "sampleKeys": ["f5480dfd-7d77-4d0b-ba2e-3391953cc74a", "AAMkADVl17IsAAA="]
}-->
```http
POST https://graph.microsoft.com/beta/groups/f5480dfd-7d77-4d0b-ba2e-3391953cc74a/events/AAMkADVl17IsAAA=/extensions
Content-type: application/json

{
  "@odata.type" : "microsoft.graph.openTypeExtension",
  "extensionName" : "Com.Contoso.Deal",
  "companyName" : "Alpine Skis",
  "dealValue" : 1010100,
  "expirationDate" : "2015-07-03T13:04:00.000Z"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-opentypeextension-3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-opentypeextension-3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-opentypeextension-3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-opentypeextension-3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-opentypeextension-3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response 3

Here is the response from the third example request.

<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.openTypeExtension"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups('f5480dfd-7d77-4d0b-ba2e-3391953cc74a')/events('AAMkADVl7IsAAA%3D')/extensions/$entity",
    "@odata.type": "#microsoft.graph.openTypeExtension",
    "id": "microsoft.graph.openTypeExtension.Com.Contoso.Deal",
    "extensionName": "Com.Contoso.Deal",
    "companyName": "Alpine Skis",
    "dealValue": 1010100,
    "expirationDate": "2015-07-03T13:04:00Z"
}
```

****

### Request 4

The fourth example creates an extension in a new group post, using the same **reply** action call to an existing group post. The **reply** action
creates a new post, and a new extension embedded in the post. The request body includes a **post** property, which in turn contains
the **body** of the new post, and the following data for the new extension:

- The type `microsoft.graph.openTypeExtension`.
- The extension name "Com.Contoso.HR".
- Additional data to be stored as 3 custom properties in the JSON payload: `companyName`, `expirationDate`, and the array of strings `topPicks`.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_opentypeextension_4",
  "sampleKeys": ["37df2ff0-0de0-4c33-8aee-75289364aef6", "AAQkADJizZJpEWwqDHsEpV_KA==", "AAMkADJiUg96QZUkA-ICwMubAAC1heiSAAA="]
}-->
```http
POST https://graph.microsoft.com/beta/groups/37df2ff0-0de0-4c33-8aee-75289364aef6/threads/AAQkADJizZJpEWwqDHsEpV_KA==/posts/AAMkADJiUg96QZUkA-ICwMubAAC1heiSAAA=/reply
Content-type: application/json

{
  "post": {
    "body": {
      "contentType": "html",
      "content": "<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>"
    },
  "extensions": [
    {
      "@odata.type": "microsoft.graph.openTypeExtension",
      "extensionName": "Com.Contoso.HR",
      "companyName": "Contoso",
      "expirationDate": "2015-07-03T13:04:00.000Z",
      "topPicks": [
        "Employees only",
        "Add spouse or guest",
        "Add family"
      ]
    }
  ]
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-opentypeextension-4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-opentypeextension-4-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-opentypeextension-4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-opentypeextension-4-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-opentypeextension-4-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response 4

Here is the response from the fourth example. Successfully creating an extension in a new group post results in only the
HTTP 202 response code.

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 202 Accepted
Content-type: text/plain
Content-Length: 0
```

****

### Request 5

The fifth example creates an extension in a new group post using the same POST operation to create a conversation. The POST operation
creates a new conversation, thread and post, and a new extension embedded in the post. The request body includes the
**Topic** and **Threads** properties, and a child **post** object for the new conversation. The **post** object
in turn contains the **body** of the new post, and the following data for the extension:

- The type `microsoft.graph.openTypeExtension`.
- The extension name "Com.Contoso.HR".
- Additional data to be stored as 3 custom properties in the JSON payload: `companyName`, `expirationDate`, and the array of strings `topPicks`.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_opentypeextension_5",
  "sampleKeys": ["37df2ff0-0de0-4c33-8aee-75289364aef6"]
}-->
```http
POST https://graph.microsoft.com/beta/groups/37df2ff0-0de0-4c33-8aee-75289364aef6/conversations
Content-type: application/json

{
  "Topic": "Does anyone have a second?",
  "Threads": [
    {
      "Posts": [
        {
          "Body": {
            "ContentType": "HTML",
            "Content": "This is urgent!"
          },
          "Extensions": [
            {
              "@odata.type": "microsoft.graph.openTypeExtension",
              "extensionName": "Com.Contoso.Benefits",
              "companyName": "Contoso",
              "expirationDate": "2016-08-03T11:00:00.000Z",
              "topPicks": [
                "Employees only",
                "Add spouse or guest",
                "Add family"
              ]
            }
          ]
        }
      ]
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-opentypeextension-5-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-opentypeextension-5-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-opentypeextension-5-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-opentypeextension-5-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-opentypeextension-5-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response 5

Here is the response from the fifth example which contains the new conversation and a thread ID. This new thread contains an automatically
created post, which in turn contains the new extension.

Note: The response object shown here might be shortened for readability.

To get the new extension, first [get all the posts](../api/conversationthread-list-posts.md) in this
thread, and initially there should be only one. Then apply the post ID and the extension name `Com.Contoso.Benefits` to
[get the extension](../api/opentypeextension-get.md).

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversation"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups('37df2ff0-0de0-4c33-8aee-75289364aef6')/conversations/$entity",
    "id": "AAQkADJToRlbJ5Mg7TFM7H-j3Y=",
    "threads": [
        {
            "id": "AAQkADJDtMUzsf_PdhAAswJOhGVsnkyDtMUzsf_Pdg=="
        }
    ]
}

```

<!-- This page was manually created. -->
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create extension",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


