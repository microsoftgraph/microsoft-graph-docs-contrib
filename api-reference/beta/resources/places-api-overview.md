---
title: "Working with the Places API in Microsoft Graph"
description: "Learn about the various space types and the corresponding Microsoft Graph Places APIs available for interacting with different place entities."
author: tiwarisakshi02
ms.date: 07/29/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# Working with the Places API in Microsoft Graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Place represents different space types within a tenant. A **place** object can be one of the following types.

|Place type	|Details |
|:--|:--|
|[building](./building.md) | Represents a building within the tenant and has properties such as name, address, and geographic coordinates. |
|[desk](./desk.md) |Represents individual desks. A **desk** must be added to a **section**. The rich properties of the **section** include email address, mode, and accessibility. |
|[floor](./floor.md) |Represents a floor within a building, including properties such as **name**, **parentId**, and **sortOrder**. A **building** is always the parent of a **floor**. |
|[room](./room.md) |Represents a room within the tenant. All rooms must be associated with Exchange mailboxes. A **room** can be added to a **floor** or to a **section**. The rich properties of the **room** include an email address for the room, accessibility, capacity, audio device, video device, and so on. |
|[roomList](./roomlist.md) |A collection of rooms in the tenant. Places supports **roomList** to ensure room booking works in **Room Finder** across all clients on all devices, such as classic Outlook across desktop and mobile. <br/><br/>However, we recommend that you rely on the new **place** types and hierarchy if you don't use **roomFinder** in the tenant. For more information about **roomList**, see the [roomList](./roomlist.md) resource type. |
|[section](./section.md) |Represents a section within a floor, including properties such as **name**, **parentId**, and **label**. A **floor** is always the parent of a **section**. |
|[workspace](./workspace.md) |Represents a collection of desks. All workspaces must be associated with Exchange mailboxes. A **workspace** can be added to a **floor** or a **section**. The rich properties of a workspace include an email address for the workspace, mode, accessibility, and capacity. |

## Using the Places API

The Places API enables applications with appropriate read or write permissions to interact with **place** objects. Every **place** object includes fundamental properties such as **id**, **placeId**, and **displayName**. More advanced types—like rooms, workspaces, and desks—offer additional properties including **mode**, **emailAddress**, and **deviceInformation**. Detailed descriptions of each type are available in their respective documentation sections. 

## Common use cases

The following table lists some of the common uses for the Places API.

| Use case | REST resource | See also |
| :--- | :--- | :--- |
| Create and manage a place  | [place](../resources/place.md) | [place methods](../resources/place.md#methods) |
| Interact with place spaces such as building, floor, section, room, room list, workspace, or desk | [place](../resources/place.md) |[place methods](../resources/place.md#methods) |

## Comparing Places APIs with findRooms and findRoomLists 

The [findRooms](../api/user-findrooms.md) and [findRoomLists](../api/user-findroomlists.md) functions support similar lookups for rooms and room lists in a tenant. The following table compares the places API and these functions.

> [!NOTE]
> The **findRooms** and **findRoomLists** functions are deprecated.
 
|Places API |findRooms and findRoomLists functions (deprecated) |
|:--|:--|
|Gets all the rooms or room lists in a tenant, and all the rooms in a room list. |Gets all the rooms or room lists in a tenant, and all the rooms in a room list.
|[List](../api/place-list.md) can return more than 100 rooms in a tenant. |[findRooms](/graph/api/user-findrooms) returns up to the first 100 rooms in a tenant. |
|Supports [getting an individual room or room list](/graph/api/place-get) in a tenant. |Doesn't support getting an individual room or room list in a tenant. |
|Defines the specific entities of [room](/graph/api/resources/room) and [roomList](/graph/api/resources/roomlist) that specify a richer property set, in addition to the display name and SMTP address.	|Each room and room list is of a lighter-weight [emailAddress](/graph/api/resources/emailaddress) type that specifies only the display name and SMTP address. |
|Supports only organizational scenarios with delegated (only for work or school accounts) or application permissions. |Supports only organizational scenarios with delegated or application permissions.
|Supports [updating an individual room or room list](../api/place-update.md) in a tenant. |Doesn't support updating an individual room or room list in a tenant. |

## Next steps

Use the Microsoft Graph Places APIs to interact with different place entities. To learn more:

- Explore the resources and methods that are most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
