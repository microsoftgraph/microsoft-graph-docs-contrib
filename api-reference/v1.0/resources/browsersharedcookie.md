---
title: "browserSharedCookie resource type"
description: "Represents a IE mode cookie that resides on a site list."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: resourcePageType
---

# browserSharedCookie resource type

Namespace: microsoft.graph


A `browserSharedCookie` represents a IE mode cookie that resides on a site list.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List browserSharedCookies](../api/browsersitelist-list-sharedcookies.md)|[browserSharedCookie](../resources/browsersharedcookie.md) collection|Get a list of the [browserSharedCookie](../resources/browsersharedcookie.md) objects and their properties.|
|[Create browserSharedCookie](../api/browsersitelist-post-sharedcookies.md)|[browserSharedCookie](../resources/browsersharedcookie.md)|Create a new [browserSharedCookie](../resources/browsersharedcookie.md) object.|
|[Get browserSharedCookie](../api/browsersharedcookie-get.md)|[browserSharedCookie](../resources/browsersharedcookie.md)|Read the properties and relationships of a [browserSharedCookie](../resources/browsersharedcookie.md) object.|
|[Update browserSharedCookie](../api/browsersharedcookie-update.md)|[browserSharedCookie](../resources/browsersharedcookie.md)|Update the properties of a [browserSharedCookie](../resources/browsersharedcookie.md) object.|
|[Delete browserSharedCookie](../api/browsersitelist-delete-sharedcookies.md)|None|Deletes a [browserSharedCookie](../resources/browsersharedcookie.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|comment|String|The comment for the shared cookie|
|createdDateTime|DateTimeOffset|The date and time that the shared cookie was created|
|displayName|String|The name of the cookie|
|history|[browserSharedCookieHistory](../resources/browsersharedcookiehistory.md) collection|The history of modifications made to the cookie.|
|hostOnly|Boolean|An attribute that controls whether a cookie is a host-only or domain cookie|
|hostOrDomain|String|The URL of the cookie|
|id|String|The unique identifier of the cookie|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The user who last modified the cookie.|
|lastModifiedDateTime|DateTimeOffset|The date and time that the cookie was last modified.|
|path|String|The path of the cookie|
|sourceEnvironment|browserSharedCookieSourceEnvironment|Specifies how the cookies are shared between Microsoft Edge and Internet Explorer.The possible values are: `microsoftEdge`, `internetExplorer11`, `both`, `unknownFutureValue`.|
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
  "id": "String (identifier)",
  "hostOrDomain": "String",
  "sourceEnvironment": "String",
  "displayName": "String",
  "path": "String",
  "hostOnly": "Boolean",
  "comment": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "history": [
    {
      "@odata.type": "microsoft.graph.browserSharedCookieHistory"
    }
  ]
}
```

