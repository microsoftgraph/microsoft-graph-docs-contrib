---
title: "browserSharedCookieHistory resource type"
description: "Represents the history of modifications applied to a browserSharedCookie."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "browser-management"
doc_type: resourcePageType
---

# browserSharedCookieHistory resource type

Namespace: microsoft.graph

Represents the history of modifications applied to a [browserSharedCookie](../resources/browsersharedcookie.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|comment|String|The comment for the shared cookie.|
|displayName|String|The name of the cookie.|
|hostOnly|Boolean|Controls whether a cookie is a host-only or domain cookie.|
|hostOrDomain|String|The URL of the cookie.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The user who last modified the cookie.|
|path|String|The path of the cookie.|
|publishedDateTime|DateTimeOffset|The date and time when the cookie was last published.|
|sourceEnvironment|browserSharedCookieSourceEnvironment|Specifies how the cookies are shared between Microsoft Edge and Internet Explorer. The possible values are: `microsoftEdge`, `internetExplorer11`, `both`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.browserSharedCookieHistory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.browserSharedCookieHistory",
  "comment": "String",
  "displayName": "String",
  "hostOnly": "Boolean",
  "hostOrDomain": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "path": "String",
  "publishedDateTime": "String (timestamp)",
  "sourceEnvironment": "String"
}
```

