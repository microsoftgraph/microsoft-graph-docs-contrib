---
title: "Update openTypeExtension"
description: "Update an open extension (openTypeExtension object) on a supported resource type."
ms.localizationpriority: medium
author: "dkershaw10"
doc_type: apiPageType
ms.subservice: extensions
ms.date: 07/22/2024
---

# Update openTypeExtension

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi-sharedfeature](../includes/todo-deprecate-basetaskapi-sharedfeature.md)]

Update an open extension ([openTypeExtension](../resources/opentypeextension.md) object) on a supported resource type.
- If a property in the request body matches the name of an existing property in the extension, the data in the extension is updated.
- Otherwise, that property and its data are added to the extension. 

The data in an extension can be primitive types or arrays of primitive types. The operation behaves differently for resources that are directory objects vs other resources.

For the list of resources that support open extensions, see the table in the [Permissions](#permissions) section.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Depending on the resource that the extension was created in and the permission type (delegated or application) requested, the permission specified in the following table is the least privileged required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, search for the following permissions in [Permissions](/graph/permissions-reference).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
| [device](../resources/device.md) | Directory.AccessAsUser.All | Not supported. | Device.ReadWrite.All |
| [driveItem](../resources/driveitem.md) | Files.ReadWrite | Files.ReadWrite | Not supported. |
| [event](../resources/event.md) | Calendars.ReadWrite | Calendars.ReadWrite | Calendars.ReadWrite |
| [group](../resources/group.md) | Group.ReadWrite.All | Not supported. | Group.ReadWrite.All |
| [group event](../resources/event.md) | Group.ReadWrite.All | Not supported. | Not supported. |
| [group post](../resources/post.md) | Group.ReadWrite.All | Not supported. | Group.ReadWrite.All |
| [message](../resources/message.md) | Mail.ReadWrite | Mail.ReadWrite | Mail.ReadWrite | 
| [organization](../resources/organization.md) | Organization.ReadWrite.All | Not supported. | Organization.ReadWrite.All |
| [personal contact](../resources/contact.md) | Contacts.ReadWrite | Contacts.ReadWrite | Contacts.ReadWrite |
| [site](../resources/site.md) | Sites.ReadWrite.All | Not supported. | Not supported. |
| [todoTask](../resources/todotask.md) | Tasks.ReadWrite | Tasks.ReadWrite | Not supported. |
| [todoTasklist](../resources/todotasklist.md)  | Tasks.ReadWrite | Tasks.ReadWrite | Not supported. |
| [user](../resources/user.md) | User.ReadWrite | Not supported. | User.ReadWrite.All |
| [baseTask](../resources/basetask.md) (deprecated) | Tasks.ReadWrite | Tasks.ReadWrite | Not supported. |
| [baseTasklist](../resources/basetasklist.md) (deprecated) | Tasks.ReadWrite | Tasks.ReadWrite | Not supported. |

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
PATCH /drive/items/{itemId}/extensions/{extensionId}
PATCH /sites/{siteId}/extensions/{extensionId}
```

>**Note:** The above syntax shows some common ways to identify a resource instance, in order to update an extension in it. 
All other syntax that allows you to identify these resource instances supports updating open extensions in them in a similar way.

See the [Request body](#request-body) section about including in the request body any custom data to change or add to that extension.

## Request headers
| Name       | Value |
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type | application/json |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

Provide a JSON body of an [openTypeExtension](../resources/opentypeextension.md) object, with the following required name-value pairs, and any custom data to change or add to that extension. 

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|Must be `#microsoft.graph.openTypeExtension`. Required.|
|extensionName|String|Required if **id** isn't supplied. Updatable.|
|id|String|Required if **id** isn't supplied. Read-only.|

For resources that are directory (Microsoft Entra ID) objects:
- To update any property in the open extension object, you must specify *all* properties in the request body; otherwise, Microsoft Graph deletes the unspecified properties.
- To delete data from a property in the open extension object but keep the property, set its value to `null`.
- To delete a property from the open extension object, don't pass it in the PATCH request body, and Microsoft Graph deletes it.
- To delete data from all properties in the open extension object but keep the open extension object, update the values of all the properties to `null`.

For Microsoft 365 resources like messages:
- You can specify a subset of the properties in the request body to update them. The omitted properties and their values are retained.
- `null` values aren't allowed.

## Response

If successful, this method returns a `204 No Content` response code for directory objects or a `200 OK` response code and an updated [openTypeExtension](../resources/opentypeextension.md) object for other resources.


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

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-opentypeextension-java-snippets.md)]
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

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-opentypeextension-python-snippets.md)]
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

****

#### Request 3
The following example shows how to update an open extension on a **driveItem**.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_opentypeextension_3",
  "sampleKeys": ["01FWCEC553UUOHTOAGBVE2IXBQTIZY3JZQ", "Com.Contoso.Estimate"]
}-->
```http
PATCH https://graph.microsoft.com/beta/drive/items/01FWCEC553UUOHTOAGBVE2IXBQTIZY3JZQ/extensions/Com.Contoso.Estimate
Content-type: application/json

{
  "extensionName": "newExtensionName",
  "myCustomString": "Contoso data",
  "myCustomBool": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-opentypeextension-3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-opentypeextension-3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-opentypeextension-3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-opentypeextension-3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-opentypeextension-3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-opentypeextension-3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-opentypeextension-3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response 3

The following example shows the response that includes the updated **extensionName** in the extension.

<!-- {  
  "blockType": "response",  
  "truncated": true,  
  "@odata.type": "microsoft.graph.openTypeExtension"  
} --> 
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "extensionId",
  "extensionName": "newExtensionName",
  "myCustomString": "Contoso data",
  "myCustomBool": false
}
```


#### Request 4

The following example shows how to update an open extension on a **site**.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_opentypeextension_4",
  "sampleKeys": ["8f52f9ad-4f4f-4739-b682-7c0283207937", "Com.Contoso.Estimate"]
}-->
```http
PATCH https://graph.microsoft.com/beta/sites/8f52f9ad-4f4f-4739-b682-7c0283207937/extensions/Com.Contoso.Estimate
Content-type: application/json

{
  "extensionName": "newExtensionName",
  "myCustomString": "Contoso data",
  "myCustomBool": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-opentypeextension-4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-opentypeextension-4-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-opentypeextension-4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-opentypeextension-4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-opentypeextension-4-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-opentypeextension-4-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response 4

The following example shows the response that includes the updated **extensionName** in the extension.

<!-- {  
  "blockType": "response",  
  "truncated": true,  
  "@odata.type": "microsoft.graph.openTypeExtension"  
} --> 
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "extensionId",
  "extensionName": "newExtensionName",
  "myCustomString": "Contoso data",
  "myCustomBool": false
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
