---
title: "newsLinkPage resource type"
description: "Represents a news link page in a site pages list."
author: "shgangan"
ms.date: 04/01/2024
ms.localizationpriority: "medium"
ms.subservice: "sharepoint"
doc_type: "resourcePageType"
---

# newsLinkPage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a news link page in a site pages [list](../resources/list.md).

Inherits from [baseSitePage](../resources/basesitepage.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/newslinkpage-list.md)|[newsLinkPage](../resources/newslinkpage.md) collection|Get a list of the [newsLinkPage](../resources/newslinkpage.md) objects and their properties.|
|[Create](../api/newslinkpage-create.md)|[newsLinkPage](../resources/newslinkpage.md) |Create a new [newsLinkPage](../resources/newslinkpage.md) in the site pages [list](../resources/list.md) of a [site](../resources/site.md).|
|[Get](../api/newslinkpage-get.md)|[newsLinkPage](../resources/newslinkpage.md)|Get the metadata of a [newsLinkPage](../resources/newslinkpage.md) in the site pages [list](../resources/list.md) of a [site](../resources/site.md).|
|[Update](../api/newslinkpage-update.md)|[newsLinkPage](../resources/newslinkpage.md)|Update the properties of a [newsLinkPage](../resources/newslinkpage.md) object.|
|[Delete](../api/basesitepage-delete.md)|None|Delete a [newsLinkPage](../resources/newslinkpage.md) object.|
|[Publish](../api/newslinkpage-publish.md)|None|Publish the latest version of a [newsLinkPage](../resources/newslinkpage.md) resource that makes the version available to all users. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|bannerImageWebUrl|String|A link to the banner image for the **newsLinkPage**.|
|createdBy|[identitySet](../resources/identityset.md)   | Identity of the creator of this **newsLinkPage**. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).|
|createdDateTime|DateTimeOffset|The date and time when the **newsLinkPage** was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).|
|description|String|The descriptive text for the **newsLinkPage**. The maximum length limit is 250 characters. Inherited from [baseSitePage](../resources/basesitepage.md).|
|eTag|String|ETag for the **newsLinkPage**. Inherited from [baseSitePage](../resources/basesitepage.md).|
|id|String|The unique identifier of the **newsLinkPage**. Inherited from [baseSitePage](../resources/basesitepage.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the last modifier of this **newsLinkPage**. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the **newsLinkPage** was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).|
|name|String|The name of the **newsLinkPage**. Inherited from [baseSitePage](../resources/basesitepage.md).|
|newsSharepointIds|[sharepointIds](../resources/sharepointids.md)|The SharePoint IDs of the referenced news article if it's recognized as a SharePoint resource. Read-only.|
|newsWebUrl|String|The URL of the news article referenced by the **newsLinkPage**. It can be an external link.|
|pageLayout|[pageLayoutType](../resources/basesitepage.md#pagelayouttype-values)|The name of the page layout of the page. The possible values are: `microsoftReserved`, `article`, `home`, `unknownFutureValue`, `newsLink`. You must use the `Prefer: include-unknown-enum-members` request header to get the following values in this evolvable enum: `newsLink`. Inherited from [baseSitePage](../resources/basesitepage.md).|
|parentReference|[itemReference](../resources/itemreference.md)|Parent information if the **newsLinkPage** has a parent. Inherited from [baseSitePage](../resources/basesitepage.md).|
|publishingState|[publicationFacet](../resources/publicationfacet.md)|The publishing status and the version of the page. Inherited from [baseSitePage](../resources/basesitepage.md).|
|title|String|Title of the **newsLinkPage**. The maximum length limit is 110 characters. Inherited from [baseSitePage](../resources/basesitepage.md).|
|webUrl|String|URL that displays the resource in the browser. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).|

### Instance attributes

Instance attributes are properties with special behaviors. These properties are temporary and either a) define behavior the service should perform or b) provide short-term property values, like a download URL for an item that expires.

| Property name| Type   | Description
|:-----------------------|:-------|:-------------------------|
|@microsoft.graph.bannerImageWebUrlContent|String|This annotation is used to send the image content in a multipart request.|
|@microsoft.graph.bannerImageWebUrlContentError|String|If a failure occurs when you upload or persist the banner image during a **newsLinkPage** creation, the response contains `@microsoft.graph.bannerImageWebUrlContentError` that provides details about the error.|

For a POST request example, see [Create newsLinkPage](../api/newslinkpage-create.md).

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|createdByUser|[user](../resources/user.md)|Identity of the user who created the **newsLinkPage**. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).|
|lastModifiedByUser|[user](../resources/user.md)|Identity of the user who last modified the **newsLinkPage**. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.newsLinkPage",
  "baseType": "microsoft.graph.baseSitePage",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.newsLinkPage",
  "bannerImageWebUrl": "String",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "eTag": "String",
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "name": "String",
  "newsSharepointIds": {"@odata.type": "microsoft.graph.sharepointIds"},
  "newsWebUrl": "String",
  "pageLayout": "String",
  "parentReference": {"@odata.type": "microsoft.graph.itemReference"},
  "publishingState": {"@odata.type": "microsoft.graph.publicationFacet"},
  "title": "String",
  "webUrl": "String"
}
```
