---
author: kevinlam
title: itemPreviewInfo resource type
ms.localizationpriority: medium
description: "Contains information about how to embed a preview of a driveItem."
ms.subservice: onedrive
doc_type: resourcePageType
ms.date: 03/06/2024
---
# itemPreviewInfo resource type

Namespace: microsoft.graph

Contains information about how to embed a preview of a [driveItem](driveitem.md).

## JSON representation

```json
{
    "getUrl": "https://www.onedrive.com/embed?foo=bar&bar=baz",
    "postParameters": "param1=value&param2=another%20value",
    "postUrl": "https://www.onedrive.com/embed_by_post"
}
```

## Properties

| Name           | Type   | Description
|:---------------|:-------|:---------------------------------------------------
| getUrl         | string | URL suitable for embedding using HTTP GET (iframes, etc.)
| postParameters | string | POST parameters to include if using postUrl
| postUrl        | string | URL suitable for embedding using HTTP POST (form post, JS, etc.)

Either getUrl, postUrl, or both may be returned depending on the current state of support for the specified options.

postParameters is a string formatted as `application/x-www-form-urlencoded`, and if performing a POST to the postUrl the content-type should be set accordingly. For example:
```
POST https://www.onedrive.com/embed_by_post
Content-Type: application/x-www-form-urlencoded

param1=value&param2=another%20value
```

The formats of URLs and parameters should be considered opaque.

