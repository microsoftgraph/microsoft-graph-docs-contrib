---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041-->


> [!IMPORTANT]
> 
> When an application queries a relationship that returns a **directoryObject** type collection, if it doesn't have permission to read a certain resource type, members of that type are returned but with limited information. For example, only the **@odata.type** property for the object type and the **id** is returned, while other properties are indicated as `null`. With this behavior, applications can request the least privileged permissions they need, rather than rely on the set of *Directory.** permissions. For details, see [Limited information returned for inaccessible member objects](/graph/permissions-overview#limited-information-returned-for-inaccessible-member-objects).
