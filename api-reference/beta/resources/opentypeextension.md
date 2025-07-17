---
title: "openTypeExtension resource type (open extensions)"
description: "Open extensions (formerly known as Office 365 data extensions) provide an easy way to directly add untyped properties to a resource in Microsoft Graph."
ms.localizationpriority: medium
author: "dkershaw10"
doc_type: resourcePageType
ms.subservice: extensions
ms.date: 07/06/2024
---

# openTypeExtension resource type (open extensions)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi-sharedfeature](../includes/todo-deprecate-basetaskapi-sharedfeature.md)]

Represents open extensions (also known as open type extensions, and formerly known as Office 365 data extensions), an [extensibility option](/graph/extensibility-overview) that provides an easy way to directly add untyped properties to a resource in Microsoft Graph.

Any open extension added to a resource shows up in the **extensions** navigation property. Each extension has an **extensionName** property, which is the only predefined, writable property for all extensions, along with your custom data. One way to help make sure extension names are unique is to use a reverse domain name system (DNS) format that is dependent on _your own domain_, for example, `com.contoso.ContactInfo`. **Do not use** the Microsoft domain (`com.microsoft` or `com.onmicrosoft`) in an extension name.

Derives from the [extension](extension.md) abstract type.

The following resource support open extensions:

+ [user](/graph/api/resources/user)
+ [group](/graph/api/resources/group)
<!--+ [administrativeUnit](/graph/api/resources/administrativeunit)-->
+ [contact](/graph/api/resources/contact)
+ [device](/graph/api/resources/device)
+ [driveItem](driveitem.md)
+ [event](/graph/api/resources/event) for both user and group calendars
+ [message](/graph/api/resources/message)
+ [organization](/graph/api/resources/organization)
+ [post](/graph/api/resources/post)
+ [todoTask](todotask.md) 
+ [todoTaskList](todotasklist.md)
+ [baseTaskList](basetasklist.md) (deprecated)
+ [baseTask](basetask.md) (deprecated)

> **Note:** \* Due to an existing service limitation, delegates cannot create open extension-appended events in shared mailbox calendars. Attempts to do so will result in an `ErrorAccessDenied` response.

For more information about Microsoft Graph extensibility including limits for open extensions, see [Add custom properties to resources using extensions](/graph/extensibility-overview) and [Add custom data to users using open extensions](/graph/extensibility-open-users).

### Drive item-specific considerations

Apply the following limits when you create extension resources on driveItem objects:
- A maximum of 100 custom extensions per item totaled across all apps.
- A maximum of five custom extensions per app ID.
- A maximum size of 50 KB per extension.
- A maximum total size of 50 MB for all extensions across all items.

### Outlook-specific considerations

Each open extension on an Outlook resource (event, message, or personal contact) is stored in a [MAPI named property](/office/client-developer/outlook/mapi/mapi-named-properties). When you create open extensions for Outlook, consider that MAPI named properties are a finite resource in a user's mailbox. When a user's named property quota is exhausted, you can't create anymore named properties for that user. This can result in unexpected behavior from clients that rely on named properties to function.

Apply the following guidelines when you create open extensions on Outlook resources:

- Create the minimum number of extensions required. Most applications should require no more than one extension. Extensions have no defined properties or structure, so you can store multiple values in a single extension.
- Avoid naming extensions in a variable manner (such as based on user input, etc.). Each time an open extension is created with a new name that hasn't been used in a user's mailbox before, a new MAPI named property is created. Removing the extension doesn't remove the named property.

### Use open extensions (for Outlook resources) or extended properties

Open extensions are the recommended solution for most scenarios involving storing and accessing custom data. If, however, you need to access custom data for Outlook MAPI properties that aren't already exposed through the [Microsoft Graph API metadata](/graph/traverse-the-graph#microsoft-graph-api-metadata), you can use [extended properties and its REST API](extended-properties-overview.md). You can verify which properties the metadata
exposes at https://graph.microsoft.com/v1.0/$metadata.

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[Create](../api/opentypeextension-post-opentypeextension.md) | [openTypeExtension](opentypeextension.md)(in an existing resource instance), or a new [baseTask](basetask.md), [baseTaskList](basetasklist.md)[contact](contact.md), [event](event.md), [message](message.md), [post](post.md), [todoTask](todotask.md), [todoTaskList](todotasklist.md), or [driveItem](driveitem.md) that contains an **openTypeExtension** object. | Create an **openTypeExtension** object in an existing or new resource instance.|
|[Get](../api/opentypeextension-get.md) | [openTypeExtension](opentypeextension.md) |Read the properties and relationships of an **openTypeExtension** object.|
|[Update](../api/opentypeextension-update.md) | [openTypeExtension](opentypeextension.md) |Update an **openTypeExtension** object. |
|[Delete](../api/opentypeextension-delete.md) | None |Delete an **openTypeExtension** object. |

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|extensionName|String|A unique text identifier for an open type data extension. Required.|
|id|String| A fully qualified identifier that concatenates the extension type with the **extensionName**. Read-only. <br/><br/> The **id** must be defined during the *Create* operation via one of the following ways: <ul><li> Explicitly define the **id** property in the request body. <li> Define an **extensionName** property in the request body, and Microsoft Graph automatically assigns the same value to the **id** property. <ul><li> In subsequent updates, you can change the **extensionName** property value to one that's different from the **id** value. <li>In subsequent updates, specifying only the **id** property in the request body automatically deletes the **extensionName** property from the open extension.</ul></ul>|

## Relationships

None

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.openTypeExtension"
}-->

```json
{
  "extensionName": "string",
  "id": "String (identifier)"
}
```

## Related content

+ [Add custom properties to resources using extensions](/graph/extensibility-overview)
+ [Add custom data to users using open extensions](/graph/extensibility-open-users)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "openTypeExtension resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
