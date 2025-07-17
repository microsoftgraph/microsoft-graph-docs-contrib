---
title: "onenote resource type"
description: "Represents the entry point for OneNote resources."
author: "jewan-microsoft"
ms.localizationpriority: high
ms.subservice: "onenote"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# onenote resource type

Namespace: microsoft.graph

Represents the entry point for OneNote resources.

All calls to the OneNote service through the Microsoft Graph API use this service root URL:

```http
https://graph.microsoft.com/{version}/{location}/onenote/ 
```

The location can be user notebooks on Microsoft 365 or consumer OneDrive, group notebooks or SharePoint site-hosted team notebooks on Microsoft 365. 

**User notebooks** To access personal notebooks on consumer OneDrive or OneDrive for Business, use one of the following URLs:

```http
https://graph.microsoft.com/{version}/me/onenote/{notebooks | sections | sectionGroups | pages} 
https://graph.microsoft.com/{version}/users/{userPrincipalName}/onenote/{notebooks | sections | sectionGroups | pages} 
https://graph.microsoft.com/{version}/users/{id}/onenote/{notebooks | sections | sectionGroups | pages} 
```

**Group notebooks** To access notebooks that are owned by a group, use the following service root URL:

```http
https://graph.microsoft.com/{version}/groups/{id}/onenote/{notebooks | sections | sectionGroups | pages} 
```
**SharePoint site notebooks** To access notebooks that are owned by a SharePoint team site, use the following service root URL:

```http
https://graph.microsoft.com/{version}/sites/{id}/onenote/{notebooks | sections | sectionGroups | pages} 
```
## Authorization

For information about the permissions required to work with OneNote APIs, see [Notes permissions](/graph/permissions-reference#notes-permissions).


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create notebook](../api/onenote-post-notebooks.md) |[notebook](notebook.md)| Create a notebook by posting to the notebooks collection.|
|[List notebooks](../api/onenote-list-notebooks.md) |[notebook](notebook.md) collection| Get a collection of notebooks.|
|[Create page](../api/onenote-post-pages.md) |[page](page.md)| Create a page by posting to the pages collection.|
|[List pages](../api/onenote-list-pages.md) |[page](page.md) collection| Get a collection of pages.|
|[List section groups](../api/onenote-list-sectiongroups.md) |[sectionGroup](sectiongroup.md) collection| Get a collection of section groups.|
|[List sections](../api/onenote-list-sections.md) |[onenoteSection](section.md) collection| Get a collection of sections.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|notebooks|[notebook](notebook.md) collection|The collection of OneNote notebooks that are owned by the user or group. Read-only. Nullable.|
|operations|[onenoteOperation](onenoteoperation.md) collection |The status of OneNote operations. Getting an operations collection isn't supported, but you can get the status of long-running operations if the `Operation-Location` header is returned in the response. Read-only. Nullable.|
|pages|[onenotePage](page.md) collection|The pages in all OneNote notebooks that are owned by the user or group.  Read-only. Nullable.|
|resources|[onenoteResource](resource.md) collection |The image and other file resources in OneNote pages. Getting a resources collection isn't supported, but you can [get the binary content of a specific resource](resource.md). Read-only. Nullable.|
|sectionGroups|[sectionGroup](sectiongroup.md) collection|The section groups in all OneNote notebooks that are owned by the user or group.  Read-only. Nullable.|
|sections|[onenoteSection](section.md) collection|The sections in all OneNote notebooks that are owned by the user or group.  Read-only. Nullable.|


## JSON representation
The following JSON representation shows the resource type.
<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.onenote"
}-->
```json
{
  "notebooks": [{ "@odata.type": "microsoft.graph.notebook" }],
  "operations": [{ "@odata.type": "microsoft.graph.onenoteOperation" }],
  "pages": [{ "@odata.type": "microsoft.graph.onenotePage" }],
  "resources": [ { "@odata.type": "microsoft.graph.onenoteResource" } ],
  "sectionGroups": [ { "@odata.type": "microsoft.graph.sectionGroup" } ],
  "sections": [ { "@odata.type": "microsoft.graph.onenoteSection" } ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onenote resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

