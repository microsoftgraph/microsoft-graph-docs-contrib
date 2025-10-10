---
title: "Create site"
description: "Create a new site object."
author: "spgraph-docs-team"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 10/00/2025
---

# Create site

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [site](../resources/site.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "site-post-sites-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/site-post-sites-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /sites
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [site](../resources/site.md) object.

You can specify the following properties when you create a **site**.

|Property|Type|Description|
|:---|:---|:---|
|description|String| The descriptive text for the site. Inherited from [baseItem](../resources/baseitem.md).|
|locale|String|Defines the language and format in which the notification will be sent.|
|name|String|The name/title of the item. Inherited from [baseItem](../resources/baseitem.md). Optional.|
|ownerIdentityToResolve|[identityInput](../resources/identityinput.md)|To be used as an input for resolving Identities at the time of creation. Optional.|
|shareByEmailEnabled|Boolean|Determines if site and its content can be shared via email Optional.|
|template|siteTemplateType|Determines the template that is applied on the site. The possible values are: `sitepagepublishing`, `group`, `sts`, `unknownFutureValue`. Optional.|
|webUrl|String|URL that either displays the resource in the browser (for Office file formats), or is a direct link to the file (for other formats) Inherited from [baseItem](../resources/baseitem.md). Optional.|

## Response

If successful, this method returns a `202 Created` response code and a [site](../resources/site.md) object in the response body. The response also contains a `Location` header, which contains the location of the [getOperationStatus](./site-getoperationstatus.md) that was created to handle the site creation operation. Check the status of the creation operation by making a GET request to this location.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_site"
}
-->
``` http
POST https://graph.microsoft.com/beta/sites
Content-Type: application/json

{
  "name": "Communication Site Test",
  "webUrl": "https://contoso.sharepoint.com/sites/commsite1",
  "locale": "en-US",
  "shareByEmailEnabled": false,
  "description": "Test Site Description",
  "template": "SitePublishing",
  "ownerIdentityToResolve": {
    "email": "ryan@contoso.com"
  }
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "name": "create_site"
}-->
``` http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/sites/getOperationStatus(operationId='JXMnaHR0cHMlM0ElMkYlMkZncmFwaC5taWNyb3NvZnQuY29tJTJGc2l0ZXMlMkZ0ZWFtc2l0ZTE=')
```