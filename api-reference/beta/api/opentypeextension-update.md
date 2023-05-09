---
title: "Update openTypeExtension"
description: "Update an open extension (openTypeExtension object) with the properties in the request body:"
ms.localizationpriority: medium
author: "dkershaw10"
doc_type: apiPageType
ms.prod: "extensions"
---

# Update openTypeExtension

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi-sharedfeature](../includes/todo-deprecate-basetaskapi-sharedfeature.md)]

Update an open extension ([openTypeExtension](../resources/opentypeextension.md) object) with the properties in the request body:

- If a property in the request body matches the name of an existing property in the extension, the data in the 
extension is updated.
- Otherwise that property and its data are added to the extension. 

The data in an extension can be primitive types, or arrays of primitive types.

See the table in the [Permissions](#permissions) section for the list of resources that support open extensions.

## Permissions

Depending on the resource that the extension was created in and the permission type (delegated or application) requested, the permission specified in the following table is the least privileged required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, search for the following permissions in [Permissions](/graph/permissions-reference).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
| [baseTask](../resources/basetask.md) (deprecated) | Tasks.ReadWrite | Tasks.ReadWrite | Not supported |
| [baseTasklist](../resources/basetasklist.md) (deprecated) | Tasks.ReadWrite | Tasks.ReadWrite | Not supported |
| [device](../resources/device.md) | Directory.AccessAsUser.All | Not supported | Device.ReadWrite.All |
| [event](../resources/event.md) | Calendars.ReadWrite | Calendars.ReadWrite | Calendars.ReadWrite |
| [group](../resources/group.md) | Group.ReadWrite.All | Not supported | Group.ReadWrite.All |
| [group event](../resources/event.md) | Group.ReadWrite.All | Not supported | Not supported |
| [group post](../resources/post.md) | Group.ReadWrite.All | Not supported | Group.ReadWrite.All |
| [message](../resources/message.md) | Mail.ReadWrite | Mail.ReadWrite | Mail.ReadWrite | 
| [organization](../resources/organization.md) | Organization.ReadWrite.All | Not supported | Organization.ReadWrite.All |
| [personal contact](../resources/contact.md) | Contacts.ReadWrite | Contacts.ReadWrite | Contacts.ReadWrite |
| [todoTask](../resources/todotask.md) | Tasks.ReadWrite | Tasks.ReadWrite | Not supported |
| [todoTasklist](../resources/todotasklist.md)  | Tasks.ReadWrite | Tasks.ReadWrite | Not supported |
| [user](../resources/user.md) | User.ReadWrite | User.ReadWrite | User.ReadWrite.All |

## HTTP request

In the request, identify the resource instance, use the **extensions** 
navigation property of that instance to identify the extension, and do a `PATCH` on that extension instance.

<!-- { "blockType": "ignored" } -->
```http
PATCH /administrativeUnits/{administrativeUnitId}/extensions/{extensionId}
PATCH /devices/{deviceId}/extensions/{extensionId}
PATCH /users/{userId|userPrincipalName}/events/{eventId}/extensions/{extensionId}
PATCH /groups/{groupId}/extensions/{extensionId}
PATCH /groups/{groupId}/events/{eventId}/extensions/{extensionId}
PATCH /groups/{groupId}/threads/{threadId}/posts/{postId}/extensions/{extensionId}
PATCH /users/{userId|userPrincipalName}/messages/{messageId}/extensions/{extensionId}
PATCH /organization/{organizationId}/extensions/{extensionId}
PATCH /users/{userId|userPrincipalName}/contacts/{contactId}/extensions/{extensionId}
PATCH /users/{userId|userPrincipalName}/extensions/{extensionId}
PATCH /users/me/todo/lists/{listId}/tasks/{taskId}/extensions/{extensionId}
PATCH /users/me/todo/lists/{listId}/extensions/{extensionId}
PATCH /users/me/tasks/lists/{listId}/tasks/{taskId}/extensions/{extensionId}
PATCH /users/me/tasks/lists/{listId}/extensions/{extensionId}
```

>**Note:** The above syntax shows some common ways to identify a resource instance, in order to update an extension in it. 
All other syntax that allows you to identify these resource instances supports updating open extensions in them in a similar way.

See the [Request body](#request-body) section about including in the request body any custom data to change or add to that extension.

## Request headers
| Name       | Value |
|:---------------|:----------|
| Authorization | Bearer {token}. Required. |
| Content-Type | application/json |

## Request body

Provide a JSON body of an [openTypeExtension](../resources/opentypeextension.md) object, with the 
following required name-value pairs, and any custom data to change or add to that extension. 
The data in the JSON payload can be primitive types, or arrays of primitive types.

| Name       | Value |
|:---------------|:----------|
| @odata.type | microsoft.graph.openTypeExtension |
| extensionName | Unique string |

Use this operation to either store data in the open extension property, update the stored data, or delete the existing data.
    - To update any property in the open extension object, you must specify *all* properties in the request body; otherwise, Microsoft Graph will delete the unspecified properties.
    - To delete data from a property in the open extension object, set its value to `null`.
    - To delete a property from the open extension object, don't pass it in the PATCH request body, and Microsoft Graph will delete it.
    - To delete data from all properties in the open extension object but keep the open extension object, update the values of the properties to `null`.

## Response

If successful, this method returns a `200 OK` response code and the updated
[openTypeExtension](../resources/opentypeextension.md) object.


## Example
#### Request 1

The first example shows how to update an extension in a message. The extension is initially represented by the following JSON payload:

<!-- { "blockType": "ignored" } -->
```http
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Me/messages('AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===')/extensions/$entity",
    "@odata.type": "#microsoft.graph.openTypeExtension",
    "@odata.id": "https://graph.microsoft.com/beta/users('ddfc984d-b826-40d7-b48b-57002df85e00@1717f226-49d1-4d0c-9d74-709fad6677b4')/messages('AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===')/extensions
('Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral')",
    "extensionName": "Com.Contoso.Referral",
    "id": "Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral",
    "companyName": "Wingtip Toys",
    "dealValue": 500050,
    "expirationDate": "2015-12-03T10:00:00Z"
}
```

You can reference the extension by its name:

<!-- { "blockType": "ignored" } -->
```http
PATCH https://graph.microsoft.com/beta/me/messages/AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===/extensions/Com.Contoso.Referral
```

Or you can reference the extension by its fully qualified name:

<!-- { "blockType": "ignored" } -->
```http
PATCH https://graph.microsoft.com/beta/me/messages/AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===/extensions/Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral
```

You can use either example request and the following request body to update the above extension by:
- Changing `companyName` from `Wingtip Toys` to `Wingtip Toys (USA)`
- Changing `dealValue` from `500050` to `500100`
- Adding new data as the custom property `updated`

<!-- { "blockType": "ignored" } -->
```http
{
    "@odata.type": "microsoft.graph.openTypeExtension",
    "extensionName": "Com.Contoso.Referral",
    "companyName": "Wingtip Toys (USA)",
    "dealValue": "500100",
    "expirationDate": "2015-12-03T10:00:00.000Z",
    "updated": "2015-10-29T11:00:00.000Z"
} 
```


#### Response 1

Here is the response which is the same regardless of the way used to reference the extension.

<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Me/messages('AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===')/extensions/$entity",
    "@odata.type": "#microsoft.graph.openTypeExtension",
    "@odata.id": "https://graph.microsoft.com/beta/users('ddfc984d-b826-40d7-b48b-57002df85e00@1717f226-49d1-4d0c-9d74-709fad6677b4')/messages('AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===')/extensions
('Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral')",
    "id": "Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral",
    "extensionName": "Com.Contoso.Referral",
    "companyName": "Wingtip Toys (USA)",
    "dealValue": 500100,
    "expirationDate": "2015-12-03T10:00:00Z",
    "updated": "2015-10-29T11:00:00.000Z"
}
```

****

#### Request 2

The second example shows how to update an extension in a group post. The extension is initially represented by the following JSON payload, 
with an `expirationDate` value of `2015-07-03T13:04:00Z`:

<!-- { "blockType": "ignored" } -->
```http
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups('37df2ff0-0de0-4c33-8aee-75289364aef6')/threads('AAQkADJizZJpEWwqDHsEpV_KA%3D%3D')/posts('AAMkADJiUg96QZUkA-ICwMubAADDEd7UAAA%3D')/extensions/$entity",
    "@odata.type": "#microsoft.graph.openTypeExtension",
    "id": "Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Estimate",
    "extensionName": "Com.Contoso.Estimate",
    "companyName": "Contoso",
    "expirationDate": "2015-07-03T13:04:00Z",
    "DealValue": 1010100,
    "Strings@odata.type": "#Collection(String)",
    "topPicks": [
        "Employees only",
        "Add spouse or guest",
        "Add family"
    ]
}
```

The following is the request and request body to change the `expirationDate` to `2016-07-30T11:00:00Z`:


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_opentypeextension",
  "sampleKeys": ["37df2ff0-0de0-4c33-8aee-75289364aef6", "AAQkADJizZJpEWwqDHsEpV_KA==", "AAMkADJiUg96QZUkA-ICwMubAADDEd7UAAA=","Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Estimate"]
}-->
```http
PATCH https://graph.microsoft.com/beta/groups/37df2ff0-0de0-4c33-8aee-75289364aef6/threads/AAQkADJizZJpEWwqDHsEpV_KA==/posts/AAMkADJiUg96QZUkA-ICwMubAADDEd7UAAA=/extensions/Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Estimate
Content-type: application/json

{
   "@odata.type": "#microsoft.outlookServices.openTypeExtension",
   "extensionName": "Com.Contoso.Estimate",
   "companyName": "Contoso",
   "expirationDate": "2016-07-30T11:00:00.000Z",
   "DealValue": 1010100,
   "topPicks": [
       "Employees only",
       "Add spouse or guest",
       "Add family"
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-opentypeextension-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-opentypeextension-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-opentypeextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-opentypeextension-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-opentypeextension-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response 2

Here is the response of the second example which shows the updated `expirationDate` in the extension.

<!-- {  
  "blockType": "response",  
  "truncated": true,  
  "@odata.type": "microsoft.graph.openTypeExtension"  
} --> 
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups('37df2ff0-0de0-4c33-8aee-75289364aef6')/threads('AAQkADJizZJpEWwqDHsEpV_KA%3D%3D')/posts('AAMkADJiUg96QZUkA-ICwMubAADDEd7UAAA%3D')/extensions/$entity",
    "@odata.type": "#microsoft.graph.openTypeExtension",
    "id": "Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Estimate",
    "extensionName": "Com.Contoso.Estimate",
    "companyName": "Contoso",
    "expirationDate": "2016-07-30T11:00:00Z",
    "DealValue": 1010100,
    "Strings@odata.type": "#Collection(String)",
    "topPicks": [
        "Employees only",
        "Add spouse or guest",
        "Add family"
    ]
}
```

<!-- This page was manually created. -->
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update opentypeextension",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


