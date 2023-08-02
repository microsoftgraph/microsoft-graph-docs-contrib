---
title: "browserSharedCookie resource type"
description: "Represents a session cookie for Internet Explorer mode that resides on a site list."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "browser-management"
doc_type: resourcePageType
---

# browserSharedCookie resource type

Namespace: microsoft.graph

Represents a session cookie for [Internet Explorer mode](/deployedge/edge-ie-mode) that resides on a [site list](../resources/browsersitelist.md). Microsoft Edge and Internet Explorer processes use [shared session cookies](../resources/browsersharedcookie.md) to allow a streamlined experience when performing tasks such as authentication. For more details, see [Cookie sharing between Microsoft Edge and Internet Explorer](/deployedge/edge-ie-mode-add-guidance-cookieshare).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List browserSharedCookies](../api/browsersitelist-list-sharedcookies.md)|[browserSharedCookie](../resources/browsersharedcookie.md) collection|Get a list of the [browserSharedCookie](../resources/browsersharedcookie.md) objects and their properties.|
|[Create browserSharedCookie](../api/browsersitelist-post-sharedcookies.md)|[browserSharedCookie](../resources/browsersharedcookie.md)|Create a new [browserSharedCookie](../resources/browsersharedcookie.md) object in a [browserSiteList](../resources/browsersitelist.md).|
|[Get browserSharedCookie](../api/browsersharedcookie-get.md)|[browserSharedCookie](../resources/browsersharedcookie.md)|Get a [session cookie](../resources/browsersharedcookie.md) that can be shared between a Microsoft Edge process and an Internet Explorer process, while using [Internet Explorer mode](/deployedge/edge-ie-mode).|
|[Update browserSharedCookie](../api/browsersharedcookie-update.md)|None|Update the properties of a [browserSharedCookie](../resources/browsersharedcookie.md) object.|
|[Delete browserSharedCookie](../api/browsersitelist-delete-sharedcookies.md)|None|Delete a [browserSharedCookie](../resources/browsersharedcookie.md) from a [browserSiteList](../resources/browsersitelist.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|comment|String|The comment for the shared cookie.|
|createdDateTime|DateTimeOffset|The date and time when the shared cookie was created.|
|deletedDateTime|DateTimeOffset|The date and time when the shared cookie was deleted.|
|displayName|String|The name of the cookie.|
|history|[browserSharedCookieHistory](../resources/browsersharedcookiehistory.md) collection|The history of modifications applied to the cookie.|
|hostOnly|Boolean|Controls whether a cookie is a host-only or domain cookie.|
|hostOrDomain|String|The URL of the cookie.|
|id|String|The unique identifier for the cookie.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The user who last modified the cookie.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the cookie was last modified.|
|path|String|The path of the cookie.|
|sourceEnvironment|browserSharedCookieSourceEnvironment|Specifies how the cookies are shared between Microsoft Edge and Internet Explorer. The possible values are: `microsoftEdge`, `internetExplorer11`, `both`, `unknownFutureValue`.|
|status|browserSharedCookieStatus|The status of the cookie. The possible values are: `published`, `pendingAdd`, `pendingEdit`, `pendingDelete`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.browserSharedCookie",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.browserSharedCookie",
  "comment": "String",
  "createdDateTime": "String (timestamp)",
  "deletedDateTime": "String (timestamp)",
  "displayName": "String",
  "history": [
    {
      "@odata.type": "microsoft.graph.browserSharedCookieHistory"
    }
  ],
  "hostOnly": "Boolean",
  "hostOrDomain": "String",
  "id": "String (identifier)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "path": "String",
  "sourceEnvironment": "String",
  "status": "String"
}
```

